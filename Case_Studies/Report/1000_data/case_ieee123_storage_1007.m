function mpc = case_ieee123_storage_1007
%CASE_IEEE123_STORAGE_1007

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	-0.00225	-0.001125	0	0	1	1	0	4.16	1	1.2	0.8;
	2	1	0.002142	0.001071	0	0	1	1	0	4.16	1	1.2	0.8;
	3	1	0.00067	0.000335	0	0	1	1	0	4.16	1	1.2	0.8;
	4	1	-0.000899	-0.0004495	0	0	1	1	0	4.16	1	1.2	0.8;
	5	1	-0.002051	-0.0010255	0	0	1	1	0	4.16	1	1.2	0.8;
	6	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	7	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	8	1	-0.003048	-0.001524	0	0	1	1	0	4.16	1	1.2	0.8;
	9	1	-0.002715	-0.0013575	0	0	1	1	0	4.16	1	1.2	0.8;
	10	1	5e-06	2.5e-06	0	0	1	1	0	4.16	1	1.2	0.8;
	11	1	0.000531	0.0002655	0	0	1	1	0	4.16	1	1.2	0.8;
	12	1	-0.002988	-0.001494	0	0	1	1	0	4.16	1	1.2	0.8;
	13	1	-0.002494	-0.001247	0	0	1	1	0	4.16	1	1.2	0.8;
	14	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	15	1	-0.003092	-0.001546	0	0	1	1	0	4.16	1	1.2	0.8;
	16	1	-0.003347	-0.0016735	0	0	1	1	0	4.16	1	1.2	0.8;
	17	1	-0.002402	-0.001201	0	0	1	1	0	4.16	1	1.2	0.8;
	18	1	-0.002232	-0.001116	0	0	1	1	0	4.16	1	1.2	0.8;
	19	1	-0.002692	-0.001346	0	0	1	1	0	4.16	1	1.2	0.8;
	20	1	-0.001484	-0.000742	0	0	1	1	0	4.16	1	1.2	0.8;
	21	1	-0.002881	-0.0014405	0	0	1	1	0	4.16	1	1.2	0.8;
	22	1	-0.001717	-0.0008585	0	0	1	1	0	4.16	1	1.2	0.8;
	23	1	-0.002101	-0.0010505	0	0	1	1	0	4.16	1	1.2	0.8;
	24	1	-0.002582	-0.001291	0	0	1	1	0	4.16	1	1.2	0.8;
	25	1	-0.00166	-0.00083	0	0	1	1	0	4.16	1	1.2	0.8;
	26	1	0.000248	0.000124	0	0	1	1	0	4.16	1	1.2	0.8;
	27	1	-0.001917	-0.0009585	0	0	1	1	0	4.16	1	1.2	0.8;
	28	1	-0.000841	-0.0004205	0	0	1	1	0	4.16	1	1.2	0.8;
	29	1	-0.002481	-0.0012405	0	0	1	1	0	4.16	1	1.2	0.8;
	30	1	-0.000638	-0.000319	0	0	1	1	0	4.16	1	1.2	0.8;
	31	1	-0.002678	-0.001339	0	0	1	1	0	4.16	1	1.2	0.8;
	32	1	-0.002186	-0.001093	0	0	1	1	0	4.16	1	1.2	0.8;
	33	1	-0.001762	-0.000881	0	0	1	1	0	4.16	1	1.2	0.8;
	34	1	-0.003168	-0.001584	0	0	1	1	0	4.16	1	1.2	0.8;
	35	1	-0.002042	-0.001021	0	0	1	1	0	4.16	1	1.2	0.8;
	36	1	-0.001507	-0.0007535	0	0	1	1	0	4.16	1	1.2	0.8;
	37	1	-0.00172	-0.00086	0	0	1	1	0	4.16	1	1.2	0.8;
	38	1	-0.002652	-0.001326	0	0	1	1	0	4.16	1	1.2	0.8;
	39	1	-0.002989	-0.0014945	0	0	1	1	0	4.16	1	1.2	0.8;
	40	1	-0.002132	-0.001066	0	0	1	1	0	4.16	1	1.2	0.8;
	41	1	-0.003598	-0.001799	0	0	1	1	0	4.16	1	1.2	0.8;
	42	1	-0.003251	-0.0016255	0	0	1	1	0	4.16	1	1.2	0.8;
	43	1	-0.002894	-0.001447	0	0	1	1	0	4.16	1	1.2	0.8;
	44	1	-0.002384	-0.001192	0	0	1	1	0	4.16	1	1.2	0.8;
	45	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	46	1	-0.00103	-0.000515	0	0	1	1	0	4.16	1	1.2	0.8;
	47	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	48	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	49	1	0.000892	0.000446	0	0	1	1	0	4.16	1	1.2	0.8;
	50	1	-0.00274	-0.00137	0	0	1	1	0	4.16	1	1.2	0.8;
	51	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	52	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	53	1	0.0047	0.00235	0	0	1	1	0	4.16	1	1.2	0.8;
	54	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	55	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	56	1	0.000248	0.000124	0	0	1	1	0	4.16	1	1.2	0.8;
	57	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	58	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	59	1	6.6e-05	3.3e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	60	1	-0.0034	-0.0017	0	0	1	1	0	4.16	1	1.2	0.8;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	-0.0811429988	0	200	-200	1	1	1	200	-200	0	0	0	0	0	0	10	0	0	0	0;
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
