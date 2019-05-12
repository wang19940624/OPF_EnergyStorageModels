function mpc = case_ieee123_storage_804
%CASE_IEEE123_STORAGE_804

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	-0.003259	-0.0016295	0	0	1	1	0	4.16	1	1.2	0.8;
	2	1	-0.00212	-0.00106	0	0	1	1	0	4.16	1	1.2	0.8;
	3	1	0.000655	0.0003275	0	0	1	1	0	4.16	1	1.2	0.8;
	4	1	-0.002196	-0.001098	0	0	1	1	0	4.16	1	1.2	0.8;
	5	1	-0.002362	-0.001181	0	0	1	1	0	4.16	1	1.2	0.8;
	6	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	7	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	8	1	-0.003559	-0.0017795	0	0	1	1	0	4.16	1	1.2	0.8;
	9	1	-0.007007	-0.0035035	0	0	1	1	0	4.16	1	1.2	0.8;
	10	1	-0.003867	-0.0019335	0	0	1	1	0	4.16	1	1.2	0.8;
	11	1	-0.003099	-0.0015495	0	0	1	1	0	4.16	1	1.2	0.8;
	12	1	-0.003951	-0.0019755	0	0	1	1	0	4.16	1	1.2	0.8;
	13	1	-0.003288	-0.001644	0	0	1	1	0	4.16	1	1.2	0.8;
	14	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	15	1	-0.00342	-0.00171	0	0	1	1	0	4.16	1	1.2	0.8;
	16	1	-0.003576	-0.001788	0	0	1	1	0	4.16	1	1.2	0.8;
	17	1	-0.004389	-0.0021945	0	0	1	1	0	4.16	1	1.2	0.8;
	18	1	-0.003872	-0.001936	0	0	1	1	0	4.16	1	1.2	0.8;
	19	1	-0.002444	-0.001222	0	0	1	1	0	4.16	1	1.2	0.8;
	20	1	-0.002861	-0.0014305	0	0	1	1	0	4.16	1	1.2	0.8;
	21	1	-0.003512	-0.001756	0	0	1	1	0	4.16	1	1.2	0.8;
	22	1	-0.002478	-0.001239	0	0	1	1	0	4.16	1	1.2	0.8;
	23	1	-0.003557	-0.0017785	0	0	1	1	0	4.16	1	1.2	0.8;
	24	1	-0.003073	-0.0015365	0	0	1	1	0	4.16	1	1.2	0.8;
	25	1	-0.002641	-0.0013205	0	0	1	1	0	4.16	1	1.2	0.8;
	26	1	0.000249	0.0001245	0	0	1	1	0	4.16	1	1.2	0.8;
	27	1	0.000972	0.000486	0	0	1	1	0	4.16	1	1.2	0.8;
	28	1	-0.001907	-0.0009535	0	0	1	1	0	4.16	1	1.2	0.8;
	29	1	-0.002112	-0.001056	0	0	1	1	0	4.16	1	1.2	0.8;
	30	1	-0.003862	-0.001931	0	0	1	1	0	4.16	1	1.2	0.8;
	31	1	-0.003975	-0.0019875	0	0	1	1	0	4.16	1	1.2	0.8;
	32	1	-0.003453	-0.0017265	0	0	1	1	0	4.16	1	1.2	0.8;
	33	1	-0.002079	-0.0010395	0	0	1	1	0	4.16	1	1.2	0.8;
	34	1	-0.00414	-0.00207	0	0	1	1	0	4.16	1	1.2	0.8;
	35	1	-0.003117	-0.0015585	0	0	1	1	0	4.16	1	1.2	0.8;
	36	1	-0.001604	-0.000802	0	0	1	1	0	4.16	1	1.2	0.8;
	37	1	-0.00364	-0.00182	0	0	1	1	0	4.16	1	1.2	0.8;
	38	1	-0.004021	-0.0020105	0	0	1	1	0	4.16	1	1.2	0.8;
	39	1	-0.003224	-0.001612	0	0	1	1	0	4.16	1	1.2	0.8;
	40	1	-0.002577	-0.0012885	0	0	1	1	0	4.16	1	1.2	0.8;
	41	1	-0.00642	-0.00321	0	0	1	1	0	4.16	1	1.2	0.8;
	42	1	-0.0031	-0.00155	0	0	1	1	0	4.16	1	1.2	0.8;
	43	1	-0.004034	-0.002017	0	0	1	1	0	4.16	1	1.2	0.8;
	44	1	-0.002953	-0.0014765	0	0	1	1	0	4.16	1	1.2	0.8;
	45	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	46	1	-0.001825	-0.0009125	0	0	1	1	0	4.16	1	1.2	0.8;
	47	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	48	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	49	1	0.000868	0.000434	0	0	1	1	0	4.16	1	1.2	0.8;
	50	1	-0.004184	-0.002092	0	0	1	1	0	4.16	1	1.2	0.8;
	51	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	52	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	53	1	-0.00175	-0.000875	0	0	1	1	0	4.16	1	1.2	0.8;
	54	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	55	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	56	1	-0.003359	-0.0016795	0	0	1	1	0	4.16	1	1.2	0.8;
	57	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	58	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	59	1	0.000196	9.8e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	60	1	-0.003785	-0.0018925	0	0	1	1	0	4.16	1	1.2	0.8;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	-0.138711999	0	200	-200	1	1	1	200	-200	0	0	0	0	0	0	10	0	0	0	0;
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
