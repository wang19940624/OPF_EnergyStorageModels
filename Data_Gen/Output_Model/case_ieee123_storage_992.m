function mpc = case_ieee123_storage_992
%CASE_IEEE123_STORAGE_992

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	-0.003483	-0.0017415	0	0	1	1	0	4.16	1	1.2	0.8;
	2	1	0.002188	0.001094	0	0	1	1	0	4.16	1	1.2	0.8;
	3	1	0.000674	0.000337	0	0	1	1	0	4.16	1	1.2	0.8;
	4	1	0.00045	0.000225	0	0	1	1	0	4.16	1	1.2	0.8;
	5	1	-0.002001	-0.0010005	0	0	1	1	0	4.16	1	1.2	0.8;
	6	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	7	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	8	1	-0.003137	-0.0015685	0	0	1	1	0	4.16	1	1.2	0.8;
	9	1	-0.00314	-0.00157	0	0	1	1	0	4.16	1	1.2	0.8;
	10	1	-0.002928	-0.001464	0	0	1	1	0	4.16	1	1.2	0.8;
	11	1	0.000904	0.000452	0	0	1	1	0	4.16	1	1.2	0.8;
	12	1	-0.003352	-0.001676	0	0	1	1	0	4.16	1	1.2	0.8;
	13	1	-0.002789	-0.0013945	0	0	1	1	0	4.16	1	1.2	0.8;
	14	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	15	1	-0.00334	-0.00167	0	0	1	1	0	4.16	1	1.2	0.8;
	16	1	-0.003544	-0.001772	0	0	1	1	0	4.16	1	1.2	0.8;
	17	1	-0.002764	-0.001382	0	0	1	1	0	4.16	1	1.2	0.8;
	18	1	-0.002539	-0.0012695	0	0	1	1	0	4.16	1	1.2	0.8;
	19	1	-0.002679	-0.0013395	0	0	1	1	0	4.16	1	1.2	0.8;
	20	1	-0.00184	-0.00092	0	0	1	1	0	4.16	1	1.2	0.8;
	21	1	-0.003041	-0.0015205	0	0	1	1	0	4.16	1	1.2	0.8;
	22	1	-0.00171	-0.000855	0	0	1	1	0	4.16	1	1.2	0.8;
	23	1	-0.002429	-0.0012145	0	0	1	1	0	4.16	1	1.2	0.8;
	24	1	-0.002649	-0.0013245	0	0	1	1	0	4.16	1	1.2	0.8;
	25	1	-0.001902	-0.000951	0	0	1	1	0	4.16	1	1.2	0.8;
	26	1	0.000293	0.0001465	0	0	1	1	0	4.16	1	1.2	0.8;
	27	1	-0.002132	-0.001066	0	0	1	1	0	4.16	1	1.2	0.8;
	28	1	-0.001147	-0.0005735	0	0	1	1	0	4.16	1	1.2	0.8;
	29	1	-0.002537	-0.0012685	0	0	1	1	0	4.16	1	1.2	0.8;
	30	1	-0.003069	-0.0015345	0	0	1	1	0	4.16	1	1.2	0.8;
	31	1	-0.002834	-0.001417	0	0	1	1	0	4.16	1	1.2	0.8;
	32	1	-0.002499	-0.0012495	0	0	1	1	0	4.16	1	1.2	0.8;
	33	1	-0.001859	-0.0009295	0	0	1	1	0	4.16	1	1.2	0.8;
	34	1	-0.003759	-0.0018795	0	0	1	1	0	4.16	1	1.2	0.8;
	35	1	-0.00233	-0.001165	0	0	1	1	0	4.16	1	1.2	0.8;
	36	1	-0.001693	-0.0008465	0	0	1	1	0	4.16	1	1.2	0.8;
	37	1	-0.001846	-0.000923	0	0	1	1	0	4.16	1	1.2	0.8;
	38	1	-0.003014	-0.001507	0	0	1	1	0	4.16	1	1.2	0.8;
	39	1	-0.002853	-0.0014265	0	0	1	1	0	4.16	1	1.2	0.8;
	40	1	-0.00237	-0.001185	0	0	1	1	0	4.16	1	1.2	0.8;
	41	1	-0.003644	-0.001822	0	0	1	1	0	4.16	1	1.2	0.8;
	42	1	-0.003486	-0.001743	0	0	1	1	0	4.16	1	1.2	0.8;
	43	1	-0.003254	-0.001627	0	0	1	1	0	4.16	1	1.2	0.8;
	44	1	-0.002145	-0.0010725	0	0	1	1	0	4.16	1	1.2	0.8;
	45	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	46	1	-0.001014	-0.000507	0	0	1	1	0	4.16	1	1.2	0.8;
	47	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	48	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	49	1	0.0009	0.00045	0	0	1	1	0	4.16	1	1.2	0.8;
	50	1	-0.002961	-0.0014805	0	0	1	1	0	4.16	1	1.2	0.8;
	51	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	52	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	53	1	-0.001204	-0.000602	0	0	1	1	0	4.16	1	1.2	0.8;
	54	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	55	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	56	1	-5.4e-05	-2.7e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	57	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	58	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	59	1	0.000191	9.55e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	60	1	-0.003541	-0.0017705	0	0	1	1	0	4.16	1	1.2	0.8;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	-0.0989119988	0	200	-200	1	1	1	200	-200	0	0	0	0	0	0	10	0	0	0	0;
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
