function mpc = case_ieee123_storage_993
%CASE_IEEE123_STORAGE_993

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	-0.003486	-0.001743	0	0	1	1	0	4.16	1	1.2	0.8;
	2	1	0.002177	0.0010885	0	0	1	1	0	4.16	1	1.2	0.8;
	3	1	0.000676	0.000338	0	0	1	1	0	4.16	1	1.2	0.8;
	4	1	-0.001536	-0.000768	0	0	1	1	0	4.16	1	1.2	0.8;
	5	1	-0.002038	-0.001019	0	0	1	1	0	4.16	1	1.2	0.8;
	6	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	7	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	8	1	-0.003141	-0.0015705	0	0	1	1	0	4.16	1	1.2	0.8;
	9	1	-0.00354	-0.00177	0	0	1	1	0	4.16	1	1.2	0.8;
	10	1	-0.002903	-0.0014515	0	0	1	1	0	4.16	1	1.2	0.8;
	11	1	-0.002164	-0.001082	0	0	1	1	0	4.16	1	1.2	0.8;
	12	1	-0.003349	-0.0016745	0	0	1	1	0	4.16	1	1.2	0.8;
	13	1	-0.002812	-0.001406	0	0	1	1	0	4.16	1	1.2	0.8;
	14	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	15	1	-0.003329	-0.0016645	0	0	1	1	0	4.16	1	1.2	0.8;
	16	1	-0.003538	-0.001769	0	0	1	1	0	4.16	1	1.2	0.8;
	17	1	-0.002753	-0.0013765	0	0	1	1	0	4.16	1	1.2	0.8;
	18	1	-0.002525	-0.0012625	0	0	1	1	0	4.16	1	1.2	0.8;
	19	1	-0.002684	-0.001342	0	0	1	1	0	4.16	1	1.2	0.8;
	20	1	-0.001841	-0.0009205	0	0	1	1	0	4.16	1	1.2	0.8;
	21	1	-0.003008	-0.001504	0	0	1	1	0	4.16	1	1.2	0.8;
	22	1	-0.001625	-0.0008125	0	0	1	1	0	4.16	1	1.2	0.8;
	23	1	-0.002456	-0.001228	0	0	1	1	0	4.16	1	1.2	0.8;
	24	1	-0.000127	-6.35e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	25	1	-0.001892	-0.000946	0	0	1	1	0	4.16	1	1.2	0.8;
	26	1	0.000292	0.000146	0	0	1	1	0	4.16	1	1.2	0.8;
	27	1	-0.002132	-0.001066	0	0	1	1	0	4.16	1	1.2	0.8;
	28	1	-0.001119	-0.0005595	0	0	1	1	0	4.16	1	1.2	0.8;
	29	1	-0.002542	-0.001271	0	0	1	1	0	4.16	1	1.2	0.8;
	30	1	-0.002992	-0.001496	0	0	1	1	0	4.16	1	1.2	0.8;
	31	1	-0.002827	-0.0014135	0	0	1	1	0	4.16	1	1.2	0.8;
	32	1	-0.002444	-0.001222	0	0	1	1	0	4.16	1	1.2	0.8;
	33	1	-0.001842	-0.000921	0	0	1	1	0	4.16	1	1.2	0.8;
	34	1	-0.003753	-0.0018765	0	0	1	1	0	4.16	1	1.2	0.8;
	35	1	-0.002234	-0.001117	0	0	1	1	0	4.16	1	1.2	0.8;
	36	1	-0.001691	-0.0008455	0	0	1	1	0	4.16	1	1.2	0.8;
	37	1	-0.00185	-0.000925	0	0	1	1	0	4.16	1	1.2	0.8;
	38	1	-0.003001	-0.0015005	0	0	1	1	0	4.16	1	1.2	0.8;
	39	1	-0.00285	-0.001425	0	0	1	1	0	4.16	1	1.2	0.8;
	40	1	-0.00237	-0.001185	0	0	1	1	0	4.16	1	1.2	0.8;
	41	1	-0.003995	-0.0019975	0	0	1	1	0	4.16	1	1.2	0.8;
	42	1	-0.00349	-0.001745	0	0	1	1	0	4.16	1	1.2	0.8;
	43	1	-0.003259	-0.0016295	0	0	1	1	0	4.16	1	1.2	0.8;
	44	1	-0.00197	-0.000985	0	0	1	1	0	4.16	1	1.2	0.8;
	45	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	46	1	-0.001035	-0.0005175	0	0	1	1	0	4.16	1	1.2	0.8;
	47	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	48	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	49	1	0.000899	0.0004495	0	0	1	1	0	4.16	1	1.2	0.8;
	50	1	-0.002953	-0.0014765	0	0	1	1	0	4.16	1	1.2	0.8;
	51	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	52	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	53	1	-0.001482	-0.000741	0	0	1	1	0	4.16	1	1.2	0.8;
	54	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	55	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	56	1	-7.3e-05	-3.65e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	57	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	58	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	59	1	8.2e-05	4.1e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	60	1	-0.003574	-0.001787	0	0	1	1	0	4.16	1	1.2	0.8;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	-0.102098999	0	200	-200	1	1	1	200	-200	0	0	0	0	0	0	10	0	0	0	0;
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