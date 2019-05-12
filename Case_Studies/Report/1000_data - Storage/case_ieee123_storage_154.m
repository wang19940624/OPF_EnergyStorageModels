function mpc = case_ieee123_storage_154
%CASE_IEEE123_STORAGE_154

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	0.000316	0.000158	0	0	1	1	0	4.16	1	1.2	0.8;
	2	1	0.001077	0.0005385	0	0	1	1	0	4.16	1	1.2	0.8;
	3	1	0.000569	0.0002845	0	0	1	1	0	4.16	1	1.2	0.8;
	4	1	0.000304	0.000152	0	0	1	1	0	4.16	1	1.2	0.8;
	5	1	0.000197	9.85e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	6	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	7	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	8	1	0.000636	0.000318	0	0	1	1	0	4.16	1	1.2	0.8;
	9	1	0.002498	0.001249	0	0	1	1	0	4.16	1	1.2	0.8;
	10	1	0.000474	0.000237	0	0	1	1	0	4.16	1	1.2	0.8;
	11	1	0.000843	0.0004215	0	0	1	1	0	4.16	1	1.2	0.8;
	12	1	0.000547	0.0002735	0	0	1	1	0	4.16	1	1.2	0.8;
	13	1	0.000201	0.0001005	0	0	1	1	0	4.16	1	1.2	0.8;
	14	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	15	1	0.001784	0.000892	0	0	1	1	0	4.16	1	1.2	0.8;
	16	1	0.000255	0.0001275	0	0	1	1	0	4.16	1	1.2	0.8;
	17	1	0.000253	0.0001265	0	0	1	1	0	4.16	1	1.2	0.8;
	18	1	0.000221	0.0001105	0	0	1	1	0	4.16	1	1.2	0.8;
	19	1	0.000267	0.0001335	0	0	1	1	0	4.16	1	1.2	0.8;
	20	1	0.000228	0.000114	0	0	1	1	0	4.16	1	1.2	0.8;
	21	1	0.000235	0.0001175	0	0	1	1	0	4.16	1	1.2	0.8;
	22	1	0.000107	5.35e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	23	1	0.000264	0.000132	0	0	1	1	0	4.16	1	1.2	0.8;
	24	1	0.002854	0.001427	0	0	1	1	0	4.16	1	1.2	0.8;
	25	1	0.000344	0.000172	0	0	1	1	0	4.16	1	1.2	0.8;
	26	1	0.000269	0.0001345	0	0	1	1	0	4.16	1	1.2	0.8;
	27	1	0.00046	0.00023	0	0	1	1	0	4.16	1	1.2	0.8;
	28	1	0.000568	0.000284	0	0	1	1	0	4.16	1	1.2	0.8;
	29	1	0.000574	0.000287	0	0	1	1	0	4.16	1	1.2	0.8;
	30	1	0.000153	7.65e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	31	1	0.000494	0.000247	0	0	1	1	0	4.16	1	1.2	0.8;
	32	1	0.000222	0.000111	0	0	1	1	0	4.16	1	1.2	0.8;
	33	1	0.000532	0.000266	0	0	1	1	0	4.16	1	1.2	0.8;
	34	1	0.000326	0.000163	0	0	1	1	0	4.16	1	1.2	0.8;
	35	1	0.000567	0.0002835	0	0	1	1	0	4.16	1	1.2	0.8;
	36	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	37	1	9.2e-05	4.6e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	38	1	0.00029	0.000145	0	0	1	1	0	4.16	1	1.2	0.8;
	39	1	0.000404	0.000202	0	0	1	1	0	4.16	1	1.2	0.8;
	40	1	0.000314	0.000157	0	0	1	1	0	4.16	1	1.2	0.8;
	41	1	0.000368	0.000184	0	0	1	1	0	4.16	1	1.2	0.8;
	42	1	0.000307	0.0001535	0	0	1	1	0	4.16	1	1.2	0.8;
	43	1	0.006902	0.003451	0	0	1	1	0	4.16	1	1.2	0.8;
	44	1	0.000402	0.000201	0	0	1	1	0	4.16	1	1.2	0.8;
	45	1	0.000515	0.0002575	0	0	1	1	0	4.16	1	1.2	0.8;
	46	1	0.00034	0.00017	0	0	1	1	0	4.16	1	1.2	0.8;
	47	1	0.000651	0.0003255	0	0	1	1	0	4.16	1	1.2	0.8;
	48	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	49	1	0.000526	0.000263	0	0	1	1	0	4.16	1	1.2	0.8;
	50	1	0.000386	0.000193	0	0	1	1	0	4.16	1	1.2	0.8;
	51	1	0.000228	0.000114	0	0	1	1	0	4.16	1	1.2	0.8;
	52	1	0.000248	0.000124	0	0	1	1	0	4.16	1	1.2	0.8;
	53	1	0.000433	0.0002165	0	0	1	1	0	4.16	1	1.2	0.8;
	54	1	0.000171	8.55e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	55	1	0.000225	0.0001125	0	0	1	1	0	4.16	1	1.2	0.8;
	56	1	0.000203	0.0001015	0	0	1	1	0	4.16	1	1.2	0.8;
	57	1	0.000825	0.0004125	0	0	1	1	0	4.16	1	1.2	0.8;
	58	1	0.000515	0.0002575	0	0	1	1	0	4.16	1	1.2	0.8;
	59	1	0.000193	9.65e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	60	1	0.000106	5.3e-05	0	0	1	1	0	4.16	1	1.2	0.8;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	0.0332830005	0	200	-200	1	1	1	200	-200	0	0	0	0	0	0	10	0	0	0	0;
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
