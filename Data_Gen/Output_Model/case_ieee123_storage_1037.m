function mpc = case_ieee123_storage_1037
%CASE_IEEE123_STORAGE_1037

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	-0.003117	-0.0015585	0	0	1	1	0	4.16	1	1.2	0.8;
	2	1	0.003222	0.001611	0	0	1	1	0	4.16	1	1.2	0.8;
	3	1	0.000633	0.0003165	0	0	1	1	0	4.16	1	1.2	0.8;
	4	1	-0.000641	-0.0003205	0	0	1	1	0	4.16	1	1.2	0.8;
	5	1	-0.001622	-0.000811	0	0	1	1	0	4.16	1	1.2	0.8;
	6	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	7	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	8	1	-0.002533	-0.0012665	0	0	1	1	0	4.16	1	1.2	0.8;
	9	1	-0.003043	-0.0015215	0	0	1	1	0	4.16	1	1.2	0.8;
	10	1	-0.001975	-0.0009875	0	0	1	1	0	4.16	1	1.2	0.8;
	11	1	-0.001933	-0.0009665	0	0	1	1	0	4.16	1	1.2	0.8;
	12	1	-0.002217	-0.0011085	0	0	1	1	0	4.16	1	1.2	0.8;
	13	1	-0.002115	-0.0010575	0	0	1	1	0	4.16	1	1.2	0.8;
	14	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	15	1	-0.001162	-0.000581	0	0	1	1	0	4.16	1	1.2	0.8;
	16	1	-0.002959	-0.0014795	0	0	1	1	0	4.16	1	1.2	0.8;
	17	1	-0.001823	-0.0009115	0	0	1	1	0	4.16	1	1.2	0.8;
	18	1	-0.001859	-0.0009295	0	0	1	1	0	4.16	1	1.2	0.8;
	19	1	-0.002431	-0.0012155	0	0	1	1	0	4.16	1	1.2	0.8;
	20	1	-0.000874	-0.000437	0	0	1	1	0	4.16	1	1.2	0.8;
	21	1	-0.002207	-0.0011035	0	0	1	1	0	4.16	1	1.2	0.8;
	22	1	-0.001377	-0.0006885	0	0	1	1	0	4.16	1	1.2	0.8;
	23	1	-0.001936	-0.000968	0	0	1	1	0	4.16	1	1.2	0.8;
	24	1	-0.00176	-0.00088	0	0	1	1	0	4.16	1	1.2	0.8;
	25	1	-0.001386	-0.000693	0	0	1	1	0	4.16	1	1.2	0.8;
	26	1	0.000125	6.25e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	27	1	-0.001735	-0.0008675	0	0	1	1	0	4.16	1	1.2	0.8;
	28	1	0.00161	0.000805	0	0	1	1	0	4.16	1	1.2	0.8;
	29	1	-0.002318	-0.001159	0	0	1	1	0	4.16	1	1.2	0.8;
	30	1	-0.00142	-0.00071	0	0	1	1	0	4.16	1	1.2	0.8;
	31	1	-0.002114	-0.001057	0	0	1	1	0	4.16	1	1.2	0.8;
	32	1	-0.001724	-0.000862	0	0	1	1	0	4.16	1	1.2	0.8;
	33	1	-0.001171	-0.0005855	0	0	1	1	0	4.16	1	1.2	0.8;
	34	1	-0.002984	-0.001492	0	0	1	1	0	4.16	1	1.2	0.8;
	35	1	-0.001551	-0.0007755	0	0	1	1	0	4.16	1	1.2	0.8;
	36	1	-0.001454	-0.000727	0	0	1	1	0	4.16	1	1.2	0.8;
	37	1	-0.001128	-0.000564	0	0	1	1	0	4.16	1	1.2	0.8;
	38	1	-0.002102	-0.001051	0	0	1	1	0	4.16	1	1.2	0.8;
	39	1	-0.002612	-0.001306	0	0	1	1	0	4.16	1	1.2	0.8;
	40	1	-0.001722	-0.000861	0	0	1	1	0	4.16	1	1.2	0.8;
	41	1	-0.002575	-0.0012875	0	0	1	1	0	4.16	1	1.2	0.8;
	42	1	0.000452	0.000226	0	0	1	1	0	4.16	1	1.2	0.8;
	43	1	-0.002354	-0.001177	0	0	1	1	0	4.16	1	1.2	0.8;
	44	1	-0.001466	-0.000733	0	0	1	1	0	4.16	1	1.2	0.8;
	45	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	46	1	-0.000484	-0.000242	0	0	1	1	0	4.16	1	1.2	0.8;
	47	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	48	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	49	1	0.000871	0.0004355	0	0	1	1	0	4.16	1	1.2	0.8;
	50	1	-0.002162	-0.001081	0	0	1	1	0	4.16	1	1.2	0.8;
	51	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	52	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	53	1	-0.001665	-0.0008325	0	0	1	1	0	4.16	1	1.2	0.8;
	54	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	55	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	56	1	0.000127	6.35e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	57	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	58	1	1e-10	5e-11	0	0	1	1	0	4.16	1	1.2	0.8;
	59	1	6.6e-05	3.3e-05	0	0	1	1	0	4.16	1	1.2	0.8;
	60	1	-0.002852	-0.001426	0	0	1	1	0	4.16	1	1.2	0.8;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	-0.0694569988	0	200	-200	1	1	1	200	-200	0	0	0	0	0	0	10	0	0	0	0;
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
