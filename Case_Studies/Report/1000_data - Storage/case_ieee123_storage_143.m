function mpc = case_ieee123_storage_143
%CASE_IEEE123_STORAGE_143

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	0.000336	0.000168	0	0	1	1	0	4.16	1	1.2	0.8;
	2	1	0.001085	0.0005425	0	0	1	1	0	4.16	1	1.2	0.8;
	3	1	0.000572	0.000286	0	0	1	1	0	4.16	1	1.2	0.8;
	4	1	0.000309	0.0001545	0	0	1	1	0	4.16	1	1.2	0.8;
	5	1	0.000331	0.0001655	0	0	1	1	0	4.16	1	1.2	0.8;
	6	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	7	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	8	1	0.003274	0.001637	0	0	1	1	0	4.16	1	1.2	0.8;
	9	1	0.00251	0.001255	0	0	1	1	0	4.16	1	1.2	0.8;
	10	1	0.000204	0.000102	0	0	1	1	0	4.16	1	1.2	0.8;
	11	1	0.000722	0.000361	0	0	1	1	0	4.16	1	1.2	0.8;
	12	1	0.000554	0.000277	0	0	1	1	0	4.16	1	1.2	0.8;
	13	1	0.000163	8.15e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	14	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	15	1	0.000216	0.000108	0	0	1	1	0	4.16	1	1.2	0.8;
	16	1	0.000255	0.0001275	0	0	1	1	0	4.16	1	1.2	0.8;
	17	1	0.000245	0.0001225	0	0	1	1	0	4.16	1	1.2	0.8;
	18	1	0.000222	0.000111	0	0	1	1	0	4.16	1	1.2	0.8;
	19	1	0.000271	0.0001355	0	0	1	1	0	4.16	1	1.2	0.8;
	20	1	0.000145	7.25e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	21	1	0.000256	0.000128	0	0	1	1	0	4.16	1	1.2	0.8;
	22	1	0.000106	5.3e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	23	1	0.000255	0.0001275	0	0	1	1	0	4.16	1	1.2	0.8;
	24	1	0.000466	0.000233	0	0	1	1	0	4.16	1	1.2	0.8;
	25	1	0.000249	0.0001245	0	0	1	1	0	4.16	1	1.2	0.8;
	26	1	0.000276	0.000138	0	0	1	1	0	4.16	1	1.2	0.8;
	27	1	0.000576	0.000288	0	0	1	1	0	4.16	1	1.2	0.8;
	28	1	0.000733	0.0003665	0	0	1	1	0	4.16	1	1.2	0.8;
	29	1	0.000594	0.000297	0	0	1	1	0	4.16	1	1.2	0.8;
	30	1	0.000153	7.65e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	31	1	0.00052	0.00026	0	0	1	1	0	4.16	1	1.2	0.8;
	32	1	0.000234	0.000117	0	0	1	1	0	4.16	1	1.2	0.8;
	33	1	0.000529	0.0002645	0	0	1	1	0	4.16	1	1.2	0.8;
	34	1	0.000312	0.000156	0	0	1	1	0	4.16	1	1.2	0.8;
	35	1	0.000575	0.0002875	0	0	1	1	0	4.16	1	1.2	0.8;
	36	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	37	1	0.000231	0.0001155	0	0	1	1	0	4.16	1	1.2	0.8;
	38	1	0.000133	6.65e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	39	1	0.000533	0.0002665	0	0	1	1	0	4.16	1	1.2	0.8;
	40	1	0.000432	0.000216	0	0	1	1	0	4.16	1	1.2	0.8;
	41	1	0.000362	0.000181	0	0	1	1	0	4.16	1	1.2	0.8;
	42	1	0.000159	7.95e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	43	1	0.006908	0.003454	0	0	1	1	0	4.16	1	1.2	0.8;
	44	1	0.000308	0.000154	0	0	1	1	0	4.16	1	1.2	0.8;
	45	1	0.000424	0.000212	0	0	1	1	0	4.16	1	1.2	0.8;
	46	1	0.000164	8.2e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	47	1	0.00086	0.00043	0	0	1	1	0	4.16	1	1.2	0.8;
	48	1	0.000447	0.0002235	0	0	1	1	0	4.16	1	1.2	0.8;
	49	1	0.000622	0.000311	0	0	1	1	0	4.16	1	1.2	0.8;
	50	1	0.000379	0.0001895	0	0	1	1	0	4.16	1	1.2	0.8;
	51	1	0.000237	0.0001185	0	0	1	1	0	4.16	1	1.2	0.8;
	52	1	0.000242	0.000121	0	0	1	1	0	4.16	1	1.2	0.8;
	53	1	0.000302	0.000151	0	0	1	1	0	4.16	1	1.2	0.8;
	54	1	0.000315	0.0001575	0	0	1	1	0	4.16	1	1.2	0.8;
	55	1	0.000328	0.000164	0	0	1	1	0	4.16	1	1.2	0.8;
	56	1	0.000292	0.000146	0	0	1	1	0	4.16	1	1.2	0.8;
	57	1	0.000842	0.000421	0	0	1	1	0	4.16	1	1.2	0.8;
	58	1	0.000435	0.0002175	0	0	1	1	0	4.16	1	1.2	0.8;
	59	1	0.000197	9.85e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	60	1	0.000102	5.1e-05	0	0	1	1	0	4.16	1	1.2	0.8;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	0.0325020004	0	200	-200	1	1	1	200	-200	0	0	0	0	0	0	10	0	0	0	0;
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
