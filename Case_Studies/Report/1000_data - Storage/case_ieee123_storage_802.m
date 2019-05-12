function mpc = case_ieee123_storage_802
%CASE_IEEE123_STORAGE_802

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	-0.003202	-0.001601	0	0	1	1	0	4.16	1	1.2	0.8;
	2	1	-0.002248	-0.001124	0	0	1	1	0	4.16	1	1.2	0.8;
	3	1	0.000519	0.0002595	0	0	1	1	0	4.16	1	1.2	0.8;
	4	1	-0.002184	-0.001092	0	0	1	1	0	4.16	1	1.2	0.8;
	5	1	-0.002352	-0.001176	0	0	1	1	0	4.16	1	1.2	0.8;
	6	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	7	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	8	1	-0.003527	-0.0017635	0	0	1	1	0	4.16	1	1.2	0.8;
	9	1	-0.006981	-0.0034905	0	0	1	1	0	4.16	1	1.2	0.8;
	10	1	-0.003317	-0.0016585	0	0	1	1	0	4.16	1	1.2	0.8;
	11	1	-0.003056	-0.001528	0	0	1	1	0	4.16	1	1.2	0.8;
	12	1	-0.003924	-0.001962	0	0	1	1	0	4.16	1	1.2	0.8;
	13	1	-0.003271	-0.0016355	0	0	1	1	0	4.16	1	1.2	0.8;
	14	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	15	1	-0.003424	-0.001712	0	0	1	1	0	4.16	1	1.2	0.8;
	16	1	-0.003552	-0.001776	0	0	1	1	0	4.16	1	1.2	0.8;
	17	1	-0.004439	-0.0022195	0	0	1	1	0	4.16	1	1.2	0.8;
	18	1	-0.003858	-0.001929	0	0	1	1	0	4.16	1	1.2	0.8;
	19	1	-0.002453	-0.0012265	0	0	1	1	0	4.16	1	1.2	0.8;
	20	1	-0.002854	-0.001427	0	0	1	1	0	4.16	1	1.2	0.8;
	21	1	-0.003526	-0.001763	0	0	1	1	0	4.16	1	1.2	0.8;
	22	1	-0.002459	-0.0012295	0	0	1	1	0	4.16	1	1.2	0.8;
	23	1	-0.003553	-0.0017765	0	0	1	1	0	4.16	1	1.2	0.8;
	24	1	-0.003044	-0.001522	0	0	1	1	0	4.16	1	1.2	0.8;
	25	1	-0.002634	-0.001317	0	0	1	1	0	4.16	1	1.2	0.8;
	26	1	0.000251	0.0001255	0	0	1	1	0	4.16	1	1.2	0.8;
	27	1	0.00102	0.00051	0	0	1	1	0	4.16	1	1.2	0.8;
	28	1	-0.001979	-0.0009895	0	0	1	1	0	4.16	1	1.2	0.8;
	29	1	-0.002093	-0.0010465	0	0	1	1	0	4.16	1	1.2	0.8;
	30	1	-0.003866	-0.001933	0	0	1	1	0	4.16	1	1.2	0.8;
	31	1	-0.004135	-0.0020675	0	0	1	1	0	4.16	1	1.2	0.8;
	32	1	-0.003458	-0.001729	0	0	1	1	0	4.16	1	1.2	0.8;
	33	1	-0.002073	-0.0010365	0	0	1	1	0	4.16	1	1.2	0.8;
	34	1	-0.004119	-0.0020595	0	0	1	1	0	4.16	1	1.2	0.8;
	35	1	-0.003105	-0.0015525	0	0	1	1	0	4.16	1	1.2	0.8;
	36	1	-0.001588	-0.000794	0	0	1	1	0	4.16	1	1.2	0.8;
	37	1	-0.003618	-0.001809	0	0	1	1	0	4.16	1	1.2	0.8;
	38	1	-0.004048	-0.002024	0	0	1	1	0	4.16	1	1.2	0.8;
	39	1	-0.003216	-0.001608	0	0	1	1	0	4.16	1	1.2	0.8;
	40	1	-0.002565	-0.0012825	0	0	1	1	0	4.16	1	1.2	0.8;
	41	1	-0.006401	-0.0032005	0	0	1	1	0	4.16	1	1.2	0.8;
	42	1	-0.00307	-0.001535	0	0	1	1	0	4.16	1	1.2	0.8;
	43	1	-0.004008	-0.002004	0	0	1	1	0	4.16	1	1.2	0.8;
	44	1	-0.003241	-0.0016205	0	0	1	1	0	4.16	1	1.2	0.8;
	45	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	46	1	-0.001714	-0.000857	0	0	1	1	0	4.16	1	1.2	0.8;
	47	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	48	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	49	1	0.000513	0.0002565	0	0	1	1	0	4.16	1	1.2	0.8;
	50	1	-0.004202	-0.002101	0	0	1	1	0	4.16	1	1.2	0.8;
	51	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	52	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	53	1	-0.001595	-0.0007975	0	0	1	1	0	4.16	1	1.2	0.8;
	54	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	55	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	56	1	-0.003353	-0.0016765	0	0	1	1	0	4.16	1	1.2	0.8;
	57	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	58	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	59	1	0.000198	9.9e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	60	1	-0.003777	-0.0018885	0	0	1	1	0	4.16	1	1.2	0.8;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	-0.138580999	0	200	-200	1	1	1	200	-200	0	0	0	0	0	0	10	0	0	0	0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	2	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	1	2	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	2	3	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	3	4	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	4	5	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	5	6	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	6	7	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	7	8	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	8	9	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	9	10	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	10	11	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	11	12	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	12	13	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	13	14	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	14	15	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	15	16	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	16	17	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	17	18	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	18	19	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	19	20	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	20	21	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	21	22	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	22	23	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	23	24	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	24	25	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	25	26	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	26	27	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	27	28	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	28	29	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	1	30	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	30	31	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	31	32	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	32	33	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	33	34	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	34	35	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	35	36	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	36	37	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	37	38	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	38	39	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	39	40	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	40	41	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	41	42	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	42	43	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	43	44	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	44	45	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	45	46	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	46	47	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	47	48	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	48	49	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	49	50	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	50	51	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	51	52	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	52	53	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	53	54	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	54	55	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	55	56	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	56	57	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	57	58	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	58	59	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
	59	60	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-80	80;
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	1	1	0;
];
     %% storage data
 % hours;
mpc.time_elapsed = 0.0167
%   storage_bus  energy  energy_rating charge_rating  discharge_rating  charge_efficiency  discharge_efficiency  thermal_rating  qmin  qmax  r  x  standby_loss  status
mpc.storage = [
	 5            0.05     0.1          1             1                 0.9                0.9                   100.0        -50.0 70.0  0.1 0.0	0.05         1;
];
