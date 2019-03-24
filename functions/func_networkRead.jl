using PowerModels

function func_networkRead(path, key, file_ext)

    # path = "./ModelData/"
    # key = "case_ieee123_storage_"
    # file_ext = ".m"

    # Load System Data
    # ----------------
    periods = 0
    for (root, dirs, files) in walkdir(path)
        for file in files
            if occursin(key, file)
                println(file)
                 periods=periods+1
            end
        end
    end

    for i=1:periods
        if i == 1
            data_1 = PowerModels.parse_file(string(path,key,i,file_ext))

            global mp_data = Dict{String,Any}(
            "name" => "$(data_1["name"])",
            "multinetwork" => true,
            "per_unit" => data_1["per_unit"],
            "baseMVA" => data_1["baseMVA"],
            "nw" => Dict{String,Any}()
            )

            delete!(data_1, "multinetwork")
            delete!(data_1, "per_unit")
            delete!(data_1, "baseMVA")
            global mp_data["nw"]["$(i)"] = data_1

        else
            data_2 = PowerModels.parse_file(string(path,key,i,file_ext))
            delete!(data_2, "multinetwork")
            delete!(data_2, "per_unit")
            delete!(data_2, "baseMVA")
            global mp_data["nw"]["$(i)"] = data_2
        end
    end
    return mp_data
end
