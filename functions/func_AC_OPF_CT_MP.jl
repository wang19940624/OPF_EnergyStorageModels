using JuMP, Ipopt, PowerModels

function func_AC_OPF_CT_MP(ref, k=1, T=1, t_start=1, horizon=maximum(collect(keys(ref[:nw]))))

    # Instancate a Solver
    #--------------------

    nlp_solver = IpoptSolver(print_level=0)
    # note: print_level changes the amount of solver information printed to the terminal

    ###############################################################################
    # 1. Building the Optimal Power Flow Model
    ###############################################################################

    # Initialize a JuMP Optimization Model
    #-------------------------------------
    model = Model(solver = nlp_solver)


    # Add Optimization and State Variables
    # ------------------------------------

    # Add voltage angles va for each bus
    @variable(model, va[t in keys(ref[:nw]), i in keys(ref[:nw][t][:bus])])

    # Add voltage angles vm for each bus
    @variable(model, ref[:nw][t][:bus][i]["vmin"] <= vm[t in keys(ref[:nw]), i in keys(ref[:nw][t][:bus])] <= ref[:nw][t][:bus][i]["vmax"], start=1.0)

    # Add active power generation variables pg for each generator, including bounds
    @variable(model, ref[:nw][t][:gen][i]["pmin"] <= pg[t in keys(ref[:nw]), i in keys(ref[:nw][t][:gen])] <= ref[:nw][t][:gen][i]["pmax"])
    # Add reactive power generation variable qg for each generator (including limits)
    @variable(model, ref[:nw][t][:gen][i]["qmin"] <= qg[t in keys(ref[:nw]), i in keys(ref[:nw][t][:gen])] <= ref[:nw][t][:gen][i]["qmax"])

    # Add power flow variables p to represent the active power flow for each branch
    @variable(model, -ref[:nw][t][:branch][l]["rate_a"] <= p[t in keys(ref[:nw]), (l,i,j) in ref[:nw][t][:arcs]] <= ref[:nw][t][:branch][l]["rate_a"])
    # Add power flow variables q to represent the reactive power flow for each branch
    @variable(model, -ref[:nw][t][:branch][l]["rate_a"] <= q[t in keys(ref[:nw]), (l,i,j) in ref[:nw][t][:arcs]] <= ref[:nw][t][:branch][l]["rate_a"])

    # Add storage power variables
    #@variable(model, -ref[:nw][t][:storage][i]["discharge_rating"] <= ps[t in keys(ref[:nw]), i in keys(ref[:nw][t][:storage])] <= ref[:nw][t][:storage][i]["discharge_rating"] )
    #@variable(model, ref[:nw][t][:storage][i]["qmin"] <= qs[t in keys(ref[:nw]), i in keys(ref[:nw][t][:storage])] <= ref[:nw][t][:storage][i]["qmax"])
    #@variable(model, 0 <= es[t in keys(ref[:nw]), i in keys(ref[:nw][t][:storage])] <= ref[:nw][t][:storage][i]["energy_rating"] )
    #TODO adjust bounds for energy/power to fit with flywheel equations
    @variable(model, ps[t in keys(ref[:nw]), i in keys(ref[:nw][t][:storage])])
    @variable(model, ref[:nw][t][:storage][i]["qmin"] <= qs[t in keys(ref[:nw]), i in keys(ref[:nw][t][:storage])] <= ref[:nw][t][:storage][i]["qmax"])
    @variable(model, 0.25*ref[:nw][t][:storage][i]["energy_rating"] <= es[t in keys(ref[:nw]), i in keys(ref[:nw][t][:storage])] <= ref[:nw][t][:storage][i]["energy_rating"] )
    @variable(model, 0 <= omega[t in keys(ref[:nw]), i in keys(ref[:nw][t][:storage])] <= sqrt(ref[:nw][t][:storage][i]["energy_rating"]/k) )

    # Add Objective Function
    # ----------------------

    # Minimize cost power generation
    # assumes costs are given as quadratic functions
    @objective(model, Min,
        sum(gen["cost"][1]*pg[t,i]^2 + gen["cost"][2]*pg[t,i] + gen["cost"][3] for t in keys(ref[:nw]), (i,gen) in ref[:nw][t][:gen])
    )

    # Add Constraints
    # ---------------

    # Fix the voltage angle to zero at the reference bus
    for t in keys(ref[:nw]), (i,bus) in ref[:nw][t][:ref_buses]
        @constraint(model, va[t,i] == 0)
    end

    # Nodal power balance constraints
    for t in keys(ref[:nw]), (i,bus) in ref[:nw][t][:bus]
        # Build a list of the loads and shunt elements connected to the bus i
        bus_loads = [ref[:nw][t][:load][l] for l in ref[:nw][t][:bus_loads][i]]
        bus_shunts = [ref[:nw][t][:shunt][s] for s in ref[:nw][t][:bus_shunts][i]]

        # Active power balance at node i
        @constraint(model,
            sum(p[t,a] for a in ref[:nw][t][:bus_arcs][i]) ==      # sum of active power flow on lines from bus i
            sum(ps[t,e] for e in ref[:nw][t][:bus_storage][i]) +   # sum of active energy storage injections from bus i
            sum(pg[t,g] for g in ref[:nw][t][:bus_gens][i]) -      # sum of active power generation at bus i
            sum(load["pd"] for load in bus_loads) -                # sum of active load consumption at bus i
            sum(shunt["gs"] for shunt in bus_shunts)*vm[t,i]^2     # sum of active shunt element injections at bus i
        )

        # Reactive power balance at node i
        @constraint(model,
            sum(q[t,a] for a in ref[:nw][t][:bus_arcs][i]) ==      # sum of active power flow on lines from bus i
            sum(qs[t,e] for e in ref[:nw][t][:bus_storage][i]) +   # sum of reactive energy storage injections from bus i
            sum(qg[t,g] for g in ref[:nw][t][:bus_gens][i]) -      # sum of active power generation at bus i
            sum(load["qd"] for load in bus_loads) -                # sum of active load consumption at bus i
            sum(shunt["bs"] for shunt in bus_shunts)*vm[t,i]^2     # sum of active shunt element injections at bus i
        )
    end

    # Branch flow limits
    for t in keys(ref[:nw]), (i, branch) in ref[:nw][t][:branch]
        # build the from variable id of the i-th branch
        f_idx = (i, branch["f_bus"], branch["t_bus"])
        # build the to variable id of the i-th branch
        t_idx = (i, branch["t_bus"], branch["f_bus"])
        # note: it is necessary to distinguish between the from and to sides of a branch due to power losses

        p_fr = p[t, f_idx]                     # p_fr is a reference to the optimization variable p[f_idx]
        q_fr = q[t, f_idx]                     # q_fr is a reference to the optimization variable q[f_idx]
        p_to = p[t, t_idx]                     # p_to is a reference to the optimization variable p[t_idx]
        q_to = q[t, t_idx]                     # q_to is a reference to the optimization variable q[t_idx]
        # note: adding constraints to p_fr is equivalent to adding constraints to p[f_idx], and so on

        vm_fr = vm[t, branch["f_bus"]]         # vm_fr is a reference to the optimization variable vm on the from side of the branch
        vm_to = vm[t, branch["t_bus"]]         # vm_to is a reference to the optimization variable vm on the to side of the branch
        va_fr = va[t, branch["f_bus"]]         # va_fr is a reference to the optimization variable va on the from side of the branch
        va_to = va[t, branch["t_bus"]]         # va_fr is a reference to the optimization variable va on the to side of the branch

        # Compute the branch parameters and transformer ratios from the data


        g, b = PowerModels.calc_branch_y(branch)
        tr, ti = PowerModels.calc_branch_t(branch)
        g_fr = branch["g_fr"]
        b_fr = branch["b_fr"]
        g_to = branch["g_to"]
        b_to = branch["b_to"]
        tm = branch["tap"]^2
        # note: tap is assumed to be 1.0 on non-transformer branches

        # From side of the branch flow
        @NLconstraint(model, p_fr ==  (g+g_fr)/tm*vm_fr^2 + (-g*tr+b*ti)/tm*(vm_fr*vm_to*cos(va_fr-va_to)) + (-b*tr-g*ti)/tm*(vm_fr*vm_to*sin(va_fr-va_to)) )
        @NLconstraint(model, q_fr == -(b+b_fr)/tm*vm_fr^2 - (-b*tr-g*ti)/tm*(vm_fr*vm_to*cos(va_fr-va_to)) + (-g*tr+b*ti)/tm*(vm_fr*vm_to*sin(va_fr-va_to)) )

        # To side of the branch flow
        @NLconstraint(model, p_to ==  (g+g_to)*vm_to^2 + (-g*tr-b*ti)/tm*(vm_to*vm_fr*cos(va_to-va_fr)) + (-b*tr+g*ti)/tm*(vm_to*vm_fr*sin(va_to-va_fr)) )
        @NLconstraint(model, q_to == -(b+b_to)*vm_to^2 - (-b*tr+g*ti)/tm*(vm_to*vm_fr*cos(va_fr-va_to)) + (-g*tr-b*ti)/tm*(vm_to*vm_fr*sin(va_to-va_fr)) )

        # Voltage angle difference limit
        @constraint(model, va_fr - va_to <= branch["angmax"])
        @constraint(model, va_fr - va_to >= branch["angmin"])

        # Apparent power limit, from side and to side
        @constraint(model, p_fr^2 + q_fr^2 <= branch["rate_a"]^2)
        @constraint(model, p_to^2 + q_to^2 <= branch["rate_a"]^2)

    end


    # Storage Energy Balance Constraints
    for t in keys(ref[:nw]), (i,bus) in ref[:nw][t][:bus]
        if t == t_start
            # Initial Energy Constraint
            for e in ref[:nw][t][:bus_storage][i]
                @constraint(model, es[t,e] == ref[:nw][t][:storage][e]["energy"]*(1-ref[:nw][t][:storage][e]["standby_loss"]) - ps[t,e]*ref[:nw][t][:time_elapsed]*ref[:nw][t][:storage][e]["charge_efficiency"])
            end

        else
            # Energy Balance Constraint
            for e in ref[:nw][t][:bus_storage][i]
                @constraint(model, es[t,e] == es[t-1,e]*(1-ref[:nw][t][:storage][e]["standby_loss"]) - ps[t,e]*ref[:nw][t][:time_elapsed]*ref[:nw][t][:storage][e]["charge_efficiency"])
            end
        end
        if t == t_start + horizon - 1 # index of final time period
            # Final energy must equal initial energy
            for e in ref[:nw][t][:bus_storage][i]
                @constraint(model, es[t,e] == ref[:nw][t][:storage][e]["energy"])
            end
        end
    end
    # Storage Energy Constant Torque constraints
    for t in keys(ref[:nw]), (i,bus) in ref[:nw][t][:bus]
            for e in ref[:nw][t][:bus_storage][i]
                @NLconstraint(model, omega[t,e] == sqrt(es[t,e]/k))
                @constraint(model, -T*omega[t,e] <= ps[t,e])
                @constraint(model, ps[t,e] <= T*omega[t,e])
            end
    end



    # Generation Ramp rate limits
    for t in keys(ref[:nw]), i in keys(ref[:nw][t][:gen])
        if t != t_start
            @constraint(model, -ref[:nw][t][:gen][i]["ramp_agc"]*ref[:nw][t][:time_elapsed]*60 <= pg[t,i]- pg[t-1,i] <= ref[:nw][t][:gen][i]["ramp_agc"]*ref[:nw][t][:time_elapsed]*60)
        end
    end



    ###############################################################################
    # 3. Solve the Optimal Power Flow Model and Review the Results
    ###############################################################################

    # Solve the optimization problem
    status = solve(model)
    println(status)

    # Check the value of the objective function
    cost = getobjectivevalue(model)
    #println("The cost of generation is $(cost).")



    results = Dict{String, Any}(
        "cost" => Dict(t => Dict(i => sum(gen["cost"][1]*getvalue(pg[t,i])^2 + gen["cost"][2]*getvalue(pg[t,i]) + gen["cost"][3]) for (i,gen) in ref[:nw][t][:gen]) for t in keys(ref[:nw])),
        "pg" => getvalue(pg),
        "qg" => getvalue(qg),
        "es" => getvalue(es),
        "ps" => getvalue(ps)
    )


    return results
end
