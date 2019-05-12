function mpc = case_ieee123_storage_460
%CASE_IEEE123_STORAGE_460

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	0.000348	0.000174	0	0	1	1	0	4.16	1	1.2	0.8;
	2	1	0.002374	0.001187	0	0	1	1	0	4.16	1	1.2	0.8;
	3	1	0.000911	0.0004555	0	0	1	1	0	4.16	1	1.2	0.8;
	4	1	0.000236	0.000118	0	0	1	1	0	4.16	1	1.2	0.8;
	5	1	0.000254	0.000127	0	0	1	1	0	4.16	1	1.2	0.8;
	6	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	7	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	8	1	0.000311	0.0001555	0	0	1	1	0	4.16	1	1.2	0.8;
	9	1	0.001442	0.000721	0	0	1	1	0	4.16	1	1.2	0.8;
	10	1	0.000263	0.0001315	0	0	1	1	0	4.16	1	1.2	0.8;
	11	1	0.002275	0.0011375	0	0	1	1	0	4.16	1	1.2	0.8;
	12	1	0.000544	0.000272	0	0	1	1	0	4.16	1	1.2	0.8;
	13	1	0.000376	0.000188	0	0	1	1	0	4.16	1	1.2	0.8;
	14	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	15	1	0.000349	0.0001745	0	0	1	1	0	4.16	1	1.2	0.8;
	16	1	0.000352	0.000176	0	0	1	1	0	4.16	1	1.2	0.8;
	17	1	0.000256	0.000128	0	0	1	1	0	4.16	1	1.2	0.8;
	18	1	0.00021	0.000105	0	0	1	1	0	4.16	1	1.2	0.8;
	19	1	0.000238	0.000119	0	0	1	1	0	4.16	1	1.2	0.8;
	20	1	0.001031	0.0005155	0	0	1	1	0	4.16	1	1.2	0.8;
	21	1	0.001703	0.0008515	0	0	1	1	0	4.16	1	1.2	0.8;
	22	1	0.000109	5.45e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	23	1	0.000462	0.000231	0	0	1	1	0	4.16	1	1.2	0.8;
	24	1	0.001099	0.0005495	0	0	1	1	0	4.16	1	1.2	0.8;
	25	1	0.000339	0.0001695	0	0	1	1	0	4.16	1	1.2	0.8;
	26	1	0.000316	0.000158	0	0	1	1	0	4.16	1	1.2	0.8;
	27	1	0.00068	0.00034	0	0	1	1	0	4.16	1	1.2	0.8;
	28	1	0.000536	0.000268	0	0	1	1	0	4.16	1	1.2	0.8;
	29	1	0.001023	0.0005115	0	0	1	1	0	4.16	1	1.2	0.8;
	30	1	0.000235	0.0001175	0	0	1	1	0	4.16	1	1.2	0.8;
	31	1	0.000639	0.0003195	0	0	1	1	0	4.16	1	1.2	0.8;
	32	1	0.000308	0.000154	0	0	1	1	0	4.16	1	1.2	0.8;
	33	1	0.000593	0.0002965	0	0	1	1	0	4.16	1	1.2	0.8;
	34	1	0.000342	0.000171	0	0	1	1	0	4.16	1	1.2	0.8;
	35	1	0.000946	0.000473	0	0	1	1	0	4.16	1	1.2	0.8;
	36	1	0.000187	9.35e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	37	1	8.5e-05	4.25e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	38	1	0.000128	6.4e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	39	1	0.000813	0.0004065	0	0	1	1	0	4.16	1	1.2	0.8;
	40	1	0.001572	0.000786	0	0	1	1	0	4.16	1	1.2	0.8;
	41	1	0.000902	0.000451	0	0	1	1	0	4.16	1	1.2	0.8;
	42	1	0.000769	0.0003845	0	0	1	1	0	4.16	1	1.2	0.8;
	43	1	0.000186	9.3e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	44	1	0.000463	0.0002315	0	0	1	1	0	4.16	1	1.2	0.8;
	45	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	46	1	0.00083	0.000415	0	0	1	1	0	4.16	1	1.2	0.8;
	47	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	48	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	49	1	0.000779	0.0003895	0	0	1	1	0	4.16	1	1.2	0.8;
	50	1	0.000479	0.0002395	0	0	1	1	0	4.16	1	1.2	0.8;
	51	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	52	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	53	1	0.000581	0.0002905	0	0	1	1	0	4.16	1	1.2	0.8;
	54	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	55	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	56	1	0.000377	0.0001885	0	0	1	1	0	4.16	1	1.2	0.8;
	57	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	58	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	59	1	0.000194	9.7e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	60	1	0.000227	0.0001135	0	0	1	1	0	4.16	1	1.2	0.8;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	0.0296720012	0	200	-200	1	1	1	200	-200	0	0	0	0	0	0	10	0	0	0	0;
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
