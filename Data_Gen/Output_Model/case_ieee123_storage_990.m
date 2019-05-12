function mpc = case_ieee123_storage_990
%CASE_IEEE123_STORAGE_990

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	-0.003461	-0.0017305	0	0	1	1	0	4.16	1	1.2	0.8;
	2	1	0.002101	0.0010505	0	0	1	1	0	4.16	1	1.2	0.8;
	3	1	0.00067	0.000335	0	0	1	1	0	4.16	1	1.2	0.8;
	4	1	0.000839	0.0004195	0	0	1	1	0	4.16	1	1.2	0.8;
	5	1	-0.002021	-0.0010105	0	0	1	1	0	4.16	1	1.2	0.8;
	6	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	7	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	8	1	-0.003165	-0.0015825	0	0	1	1	0	4.16	1	1.2	0.8;
	9	1	-0.002989	-0.0014945	0	0	1	1	0	4.16	1	1.2	0.8;
	10	1	-0.002938	-0.001469	0	0	1	1	0	4.16	1	1.2	0.8;
	11	1	-0.00088	-0.00044	0	0	1	1	0	4.16	1	1.2	0.8;
	12	1	-0.003397	-0.0016985	0	0	1	1	0	4.16	1	1.2	0.8;
	13	1	-0.002793	-0.0013965	0	0	1	1	0	4.16	1	1.2	0.8;
	14	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	15	1	-0.003286	-0.001643	0	0	1	1	0	4.16	1	1.2	0.8;
	16	1	-0.003565	-0.0017825	0	0	1	1	0	4.16	1	1.2	0.8;
	17	1	-0.002821	-0.0014105	0	0	1	1	0	4.16	1	1.2	0.8;
	18	1	-0.002604	-0.001302	0	0	1	1	0	4.16	1	1.2	0.8;
	19	1	-0.0027	-0.00135	0	0	1	1	0	4.16	1	1.2	0.8;
	20	1	-0.001864	-0.000932	0	0	1	1	0	4.16	1	1.2	0.8;
	21	1	-0.003032	-0.001516	0	0	1	1	0	4.16	1	1.2	0.8;
	22	1	-0.001891	-0.0009455	0	0	1	1	0	4.16	1	1.2	0.8;
	23	1	-0.002397	-0.0011985	0	0	1	1	0	4.16	1	1.2	0.8;
	24	1	-0.002741	-0.0013705	0	0	1	1	0	4.16	1	1.2	0.8;
	25	1	-0.001926	-0.000963	0	0	1	1	0	4.16	1	1.2	0.8;
	26	1	0.000293	0.0001465	0	0	1	1	0	4.16	1	1.2	0.8;
	27	1	-0.00175	-0.000875	0	0	1	1	0	4.16	1	1.2	0.8;
	28	1	-0.001182	-0.000591	0	0	1	1	0	4.16	1	1.2	0.8;
	29	1	-0.002579	-0.0012895	0	0	1	1	0	4.16	1	1.2	0.8;
	30	1	-0.003036	-0.001518	0	0	1	1	0	4.16	1	1.2	0.8;
	31	1	-0.002872	-0.001436	0	0	1	1	0	4.16	1	1.2	0.8;
	32	1	-0.00254	-0.00127	0	0	1	1	0	4.16	1	1.2	0.8;
	33	1	-0.001973	-0.0009865	0	0	1	1	0	4.16	1	1.2	0.8;
	34	1	-0.003786	-0.001893	0	0	1	1	0	4.16	1	1.2	0.8;
	35	1	-0.002346	-0.001173	0	0	1	1	0	4.16	1	1.2	0.8;
	36	1	-0.001702	-0.000851	0	0	1	1	0	4.16	1	1.2	0.8;
	37	1	-0.00204	-0.00102	0	0	1	1	0	4.16	1	1.2	0.8;
	38	1	-0.003036	-0.001518	0	0	1	1	0	4.16	1	1.2	0.8;
	39	1	-0.002885	-0.0014425	0	0	1	1	0	4.16	1	1.2	0.8;
	40	1	-0.002382	-0.001191	0	0	1	1	0	4.16	1	1.2	0.8;
	41	1	-0.003691	-0.0018455	0	0	1	1	0	4.16	1	1.2	0.8;
	42	1	-0.003521	-0.0017605	0	0	1	1	0	4.16	1	1.2	0.8;
	43	1	-0.003336	-0.001668	0	0	1	1	0	4.16	1	1.2	0.8;
	44	1	-0.002212	-0.001106	0	0	1	1	0	4.16	1	1.2	0.8;
	45	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	46	1	9e-05	4.5e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	47	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	48	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	49	1	0.0009	0.00045	0	0	1	1	0	4.16	1	1.2	0.8;
	50	1	-0.002994	-0.001497	0	0	1	1	0	4.16	1	1.2	0.8;
	51	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	52	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	53	1	0.00114	0.00057	0	0	1	1	0	4.16	1	1.2	0.8;
	54	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	55	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	56	1	-7.5e-05	-3.75e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	57	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	58	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	59	1	0.000192	9.6e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	60	1	-0.003534	-0.001767	0	0	1	1	0	4.16	1	1.2	0.8;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	-0.0977179988	0	200	-200	1	1	1	200	-200	0	0	0	0	0	0	10	0	0	0	0;
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
