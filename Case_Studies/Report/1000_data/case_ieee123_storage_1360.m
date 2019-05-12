function mpc = case_ieee123_storage_1360
%CASE_IEEE123_STORAGE_1360

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	0.000476	0.000238	0	0	1	1	0	4.16	1	1.2	0.8;
	2	1	0.005178	0.002589	0	0	1	1	0	4.16	1	1.2	0.8;
	3	1	0.000361	0.0001805	0	0	1	1	0	4.16	1	1.2	0.8;
	4	1	0.000241	0.0001205	0	0	1	1	0	4.16	1	1.2	0.8;
	5	1	0.000584	0.000292	0	0	1	1	0	4.16	1	1.2	0.8;
	6	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	7	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	8	1	0.001893	0.0009465	0	0	1	1	0	4.16	1	1.2	0.8;
	9	1	0.002743	0.0013715	0	0	1	1	0	4.16	1	1.2	0.8;
	10	1	0.00036	0.00018	0	0	1	1	0	4.16	1	1.2	0.8;
	11	1	0.000415	0.0002075	0	0	1	1	0	4.16	1	1.2	0.8;
	12	1	0.000853	0.0004265	0	0	1	1	0	4.16	1	1.2	0.8;
	13	1	0.000497	0.0002485	0	0	1	1	0	4.16	1	1.2	0.8;
	14	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	15	1	0.001869	0.0009345	0	0	1	1	0	4.16	1	1.2	0.8;
	16	1	0.000272	0.000136	0	0	1	1	0	4.16	1	1.2	0.8;
	17	1	0.000569	0.0002845	0	0	1	1	0	4.16	1	1.2	0.8;
	18	1	0.000123	6.15e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	19	1	0.000232	0.000116	0	0	1	1	0	4.16	1	1.2	0.8;
	20	1	0.000457	0.0002285	0	0	1	1	0	4.16	1	1.2	0.8;
	21	1	0.000408	0.000204	0	0	1	1	0	4.16	1	1.2	0.8;
	22	1	0.000351	0.0001755	0	0	1	1	0	4.16	1	1.2	0.8;
	23	1	0.000558	0.000279	0	0	1	1	0	4.16	1	1.2	0.8;
	24	1	0.000703	0.0003515	0	0	1	1	0	4.16	1	1.2	0.8;
	25	1	0.000313	0.0001565	0	0	1	1	0	4.16	1	1.2	0.8;
	26	1	0.000254	0.000127	0	0	1	1	0	4.16	1	1.2	0.8;
	27	1	0.000612	0.000306	0	0	1	1	0	4.16	1	1.2	0.8;
	28	1	0.001864	0.000932	0	0	1	1	0	4.16	1	1.2	0.8;
	29	1	0.001332	0.000666	0	0	1	1	0	4.16	1	1.2	0.8;
	30	1	0.000521	0.0002605	0	0	1	1	0	4.16	1	1.2	0.8;
	31	1	0.000434	0.000217	0	0	1	1	0	4.16	1	1.2	0.8;
	32	1	0.001418	0.000709	0	0	1	1	0	4.16	1	1.2	0.8;
	33	1	0.000744	0.000372	0	0	1	1	0	4.16	1	1.2	0.8;
	34	1	0.000334	0.000167	0	0	1	1	0	4.16	1	1.2	0.8;
	35	1	0.003391	0.0016955	0	0	1	1	0	4.16	1	1.2	0.8;
	36	1	7.3e-05	3.65e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	37	1	0.001732	0.000866	0	0	1	1	0	4.16	1	1.2	0.8;
	38	1	0.000245	0.0001225	0	0	1	1	0	4.16	1	1.2	0.8;
	39	1	0.000835	0.0004175	0	0	1	1	0	4.16	1	1.2	0.8;
	40	1	0.001067	0.0005335	0	0	1	1	0	4.16	1	1.2	0.8;
	41	1	0.000844	0.000422	0	0	1	1	0	4.16	1	1.2	0.8;
	42	1	0.003921	0.0019605	0	0	1	1	0	4.16	1	1.2	0.8;
	43	1	0.001628	0.000814	0	0	1	1	0	4.16	1	1.2	0.8;
	44	1	0.000409	0.0002045	0	0	1	1	0	4.16	1	1.2	0.8;
	45	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	46	1	0.000487	0.0002435	0	0	1	1	0	4.16	1	1.2	0.8;
	47	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	48	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	49	1	0.000747	0.0003735	0	0	1	1	0	4.16	1	1.2	0.8;
	50	1	0.000579	0.0002895	0	0	1	1	0	4.16	1	1.2	0.8;
	51	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	52	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	53	1	0.000451	0.0002255	0	0	1	1	0	4.16	1	1.2	0.8;
	54	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	55	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	56	1	0.000874	0.000437	0	0	1	1	0	4.16	1	1.2	0.8;
	57	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	58	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	59	1	0.000211	0.0001055	0	0	1	1	0	4.16	1	1.2	0.8;
	60	1	0.000405	0.0002025	0	0	1	1	0	4.16	1	1.2	0.8;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	0.0448680012	0	200	-200	1	1	1	200	-200	0	0	0	0	0	0	10	0	0	0	0;
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
