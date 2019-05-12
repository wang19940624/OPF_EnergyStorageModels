function mpc = case_ieee123_storage_1033
%CASE_IEEE123_STORAGE_1033

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	-0.003185	-0.0015925	0	0	1	1	0	4.16	1	1.2	0.8;
	2	1	0.002792	0.001396	0	0	1	1	0	4.16	1	1.2	0.8;
	3	1	0.000616	0.000308	0	0	1	1	0	4.16	1	1.2	0.8;
	4	1	-0.000664	-0.000332	0	0	1	1	0	4.16	1	1.2	0.8;
	5	1	-0.001799	-0.0008995	0	0	1	1	0	4.16	1	1.2	0.8;
	6	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	7	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	8	1	-0.002748	-0.001374	0	0	1	1	0	4.16	1	1.2	0.8;
	9	1	-0.003156	-0.001578	0	0	1	1	0	4.16	1	1.2	0.8;
	10	1	-0.002076	-0.001038	0	0	1	1	0	4.16	1	1.2	0.8;
	11	1	-0.001761	-0.0008805	0	0	1	1	0	4.16	1	1.2	0.8;
	12	1	-0.002512	-0.001256	0	0	1	1	0	4.16	1	1.2	0.8;
	13	1	-0.002157	-0.0010785	0	0	1	1	0	4.16	1	1.2	0.8;
	14	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	15	1	-0.001937	-0.0009685	0	0	1	1	0	4.16	1	1.2	0.8;
	16	1	-0.003017	-0.0015085	0	0	1	1	0	4.16	1	1.2	0.8;
	17	1	-0.001934	-0.000967	0	0	1	1	0	4.16	1	1.2	0.8;
	18	1	-0.001998	-0.000999	0	0	1	1	0	4.16	1	1.2	0.8;
	19	1	-0.002468	-0.001234	0	0	1	1	0	4.16	1	1.2	0.8;
	20	1	-0.000884	-0.000442	0	0	1	1	0	4.16	1	1.2	0.8;
	21	1	-0.002282	-0.001141	0	0	1	1	0	4.16	1	1.2	0.8;
	22	1	-0.001471	-0.0007355	0	0	1	1	0	4.16	1	1.2	0.8;
	23	1	-0.002001	-0.0010005	0	0	1	1	0	4.16	1	1.2	0.8;
	24	1	0.000499	0.0002495	0	0	1	1	0	4.16	1	1.2	0.8;
	25	1	-0.001434	-0.000717	0	0	1	1	0	4.16	1	1.2	0.8;
	26	1	0.000126	6.3e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	27	1	-0.001773	-0.0008865	0	0	1	1	0	4.16	1	1.2	0.8;
	28	1	0.001631	0.0008155	0	0	1	1	0	4.16	1	1.2	0.8;
	29	1	-0.002351	-0.0011755	0	0	1	1	0	4.16	1	1.2	0.8;
	30	1	-0.00072	-0.00036	0	0	1	1	0	4.16	1	1.2	0.8;
	31	1	-0.002182	-0.001091	0	0	1	1	0	4.16	1	1.2	0.8;
	32	1	-0.001879	-0.0009395	0	0	1	1	0	4.16	1	1.2	0.8;
	33	1	-0.001596	-0.000798	0	0	1	1	0	4.16	1	1.2	0.8;
	34	1	-0.003208	-0.001604	0	0	1	1	0	4.16	1	1.2	0.8;
	35	1	-0.001584	-0.000792	0	0	1	1	0	4.16	1	1.2	0.8;
	36	1	-0.001478	-0.000739	0	0	1	1	0	4.16	1	1.2	0.8;
	37	1	-0.001059	-0.0005295	0	0	1	1	0	4.16	1	1.2	0.8;
	38	1	-0.002181	-0.0010905	0	0	1	1	0	4.16	1	1.2	0.8;
	39	1	-0.002667	-0.0013335	0	0	1	1	0	4.16	1	1.2	0.8;
	40	1	-0.00153	-0.000765	0	0	1	1	0	4.16	1	1.2	0.8;
	41	1	-0.002797	-0.0013985	0	0	1	1	0	4.16	1	1.2	0.8;
	42	1	-0.000122	-6.1e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	43	1	-0.002435	-0.0012175	0	0	1	1	0	4.16	1	1.2	0.8;
	44	1	-0.001482	-0.000741	0	0	1	1	0	4.16	1	1.2	0.8;
	45	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	46	1	-0.000507	-0.0002535	0	0	1	1	0	4.16	1	1.2	0.8;
	47	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	48	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	49	1	0.000777	0.0003885	0	0	1	1	0	4.16	1	1.2	0.8;
	50	1	-0.002259	-0.0011295	0	0	1	1	0	4.16	1	1.2	0.8;
	51	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	52	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	53	1	0.00121	0.000605	0	0	1	1	0	4.16	1	1.2	0.8;
	54	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	55	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	56	1	0.000507	0.0002535	0	0	1	1	0	4.16	1	1.2	0.8;
	57	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	58	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	59	1	6.5e-05	3.25e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	60	1	-0.002906	-0.001453	0	0	1	1	0	4.16	1	1.2	0.8;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	-0.0679769988	0	200	-200	1	1	1	200	-200	0	0	0	0	0	0	10	0	0	0	0;
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
