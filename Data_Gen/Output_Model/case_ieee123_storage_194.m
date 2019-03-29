function mpc = case_ieee123_storage_194
%CASE_IEEE123_STORAGE_194

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	1	0.151479965	0.0837182581	0	0	1	1	0	4.16	1	1.2	0.8;
	2	1	0.0189349956	0.0104647823	0	0	1	1	0	4.16	1	1.2	0.8;
	3	1	0.113609973	0.0627886936	0	0	1	1	0	4.16	1	1.2	0.8;
	4	1	0.0946749778	0.0523239113	0	0	1	1	0	4.16	1	1.2	0.8;
	5	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	6	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	7	1	0	0	0	0	1	1	0	4.16	1	1.2	0.8;
	8	1	0.0189349956	0.0104647823	0	0	1	1	0	4.16	1	1.2	0.8;
	9	1	0.0189349956	0.0104647823	0	0	1	1	0	4.16	1	1.2	0.8;
	10	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	11	1	0.0189349956	0.0104647823	0	0	1	1	0	4.16	1	1.2	0.8;
	12	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	13	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	14	1	0.0710062334	0.0366267379	0	0	1	1	0	4.16	1	1.2	0.8;
	15	1	0.132544969	0.104647823	0	0	1	1	0	4.16	1	1.2	0.8;
	16	1	0.0710062334	0.0366267379	0	0	1	1	0	4.16	1	1.2	0.8;
	17	1	0.113609973	0.0627886936	0	0	1	1	0	4.16	1	1.2	0.8;
	18	1	0.113609973	0.0627886936	0	0	1	1	0	4.16	1	1.2	0.8;
	19	1	0.231953696	0.188366081	0	0	1	1	0	4.16	1	1.2	0.8;
	20	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	21	1	0	0	0	0	1	1	0	4.16	1	1.2	0.8;
	22	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	23	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	24	1	0.0568049867	0.0313943468	0	0	1	1	0	4.16	1	1.2	0.8;
	25	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	26	1	0.0189349956	0.0104647823	0	0	1	1	0	4.16	1	1.2	0.8;
	27	1	0.0189349956	0.0104647823	0	0	1	1	0	4.16	1	1.2	0.8;
	28	1	0.0757399823	0.0418591291	0	0	1	1	0	4.16	1	1.2	0.8;
	29	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	30	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	31	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	32	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	33	1	0	0	0	0	1	1	0	4.16	1	1.2	0.8;
	34	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	35	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	36	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	37	1	0.0946749778	0.0523239113	0	0	1	1	0	4.16	1	1.2	0.8;
	38	1	0.0757399823	0.0418591291	0	0	1	1	0	4.16	1	1.2	0.8;
	39	1	0.132544969	0.0732534759	0	0	1	1	0	4.16	1	1.2	0.8;
	40	1	0.0757399823	0.0418591291	0	0	1	1	0	4.16	1	1.2	0.8;
	41	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	42	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	43	1	0.0757399823	0.0418591291	0	0	1	1	0	4.16	1	1.2	0.8;
	44	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	45	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	46	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	47	1	0.113609973	0.0627886936	0	0	1	1	0	4.16	1	1.2	0.8;
	48	1	0.0189349956	0.0104647823	0	0	1	1	0	4.16	1	1.2	0.8;
	49	1	0.0568049867	0.0313943468	0	0	1	1	0	4.16	1	1.2	0.8;
	50	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	51	1	0.0994087267	0.078485867	0	0	1	1	0	4.16	1	1.2	0.8;
	52	1	0.198817453	0.156971734	0	0	1	1	0	4.16	1	1.2	0.8;
	53	1	0.132544969	0.0994154315	0	0	1	1	0	4.16	1	1.2	0.8;
	54	1	0.0378699911	0.0209295645	0	0	1	1	0	4.16	1	1.2	0.8;
	55	1	0.0189349956	0.0104647823	0	0	1	1	0	4.16	1	1.2	0.8;
	56	3	0	0	0	0	1	1	0	4.16	1	1.2	0.8;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	56	3	3	200	-200	1	1	1	200	-200	0	0	0	0	0	0	1	0	0	0	0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	56	1	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-360	360;
	1	2	0.0010048967	0.002058812	2.27077704e-08	100	100	100	0	0	1	-360	360;
	2	3	0.0006699312	0.0013725413	1.51385136e-08	100	100	100	0	0	1	-360	360;
	3	4	0.0010048967	0.002058812	2.27077704e-08	100	100	100	0	0	1	-360	360;
	4	5	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-360	360;
	5	6	0.0006699312	0.0013725413	1.51385136e-08	100	100	100	0	0	1	-360	360;
	6	7	0.000418707	0.0008578383	9.46157099e-09	100	100	100	0	0	1	-360	360;
	7	8	0.0009211553	0.0018872444	2.08154562e-08	100	100	100	0	0	1	-360	360;
	8	9	0.0009211553	0.0018872444	2.08154562e-08	100	100	100	0	0	1	-360	360;
	7	10	0.0011723795	0.0024019474	2.64923988e-08	100	100	100	0	0	1	-360	360;
	10	11	0.0025122418	0.00514703	5.67694259e-08	100	100	100	0	0	1	-360	360;
	11	12	0.0027749546	0.0013221274	1.83926822e-07	100	100	100	0	0	1	-360	360;
	12	13	0.0019424682	0.0009254892	1.28748776e-07	100	100	100	0	0	1	-360	360;
	13	14	0.0038849364	0.0018509784	2.57497551e-07	100	100	100	0	0	1	-360	360;
	14	15	0.0047174228	0.0022476166	3.12675598e-07	100	100	100	0	0	1	-360	360;
	15	16	0.0036074409	0.0017187657	2.39104869e-07	100	100	100	0	0	1	-360	360;
	11	17	0.0011723795	0.0024019474	2.64923988e-08	100	100	100	0	0	1	-360	360;
	17	18	0.0009211553	0.0018872444	2.08154562e-08	100	100	100	0	0	1	-360	360;
	18	19	0.0006699312	0.0013725413	1.51385136e-08	100	100	100	0	0	1	-360	360;
	19	20	0.0013398623	0.0027450827	3.02770272e-08	100	100	100	0	0	1	-360	360;
	20	21	0.0003349656	0.0006862707	7.56925679e-09	100	100	100	0	0	1	-360	360;
	21	22	0.0007536726	0.001544109	1.7e-08	100	100	100	0	0	1	-360	360;
	21	23	0.0015910865	0.0032597857	3.6e-08	100	100	100	0	0	1	-360	360;
	23	24	0.0015910865	0.0032597857	3.6e-08	100	100	100	0	0	1	-360	360;
	24	25	0.0008374139	0.0017156767	1.8923142e-08	100	100	100	0	0	1	-360	360;
	25	26	0.0008374139	0.0017156767	1.8923142e-08	100	100	100	0	0	1	-360	360;
	19	27	0.002344759	0.0048038947	5.3e-08	100	100	100	0	0	1	-360	360;
	27	28	0.0015073451	0.003088218	3.40616556e-08	100	100	100	0	0	1	-360	360;
	28	29	0.0009211553	0.0018872444	2.08154562e-08	100	100	100	0	0	1	-360	360;
	29	30	0.0007536726	0.001544109	1.7e-08	100	100	100	0	0	1	-360	360;
	30	31	0.0007536726	0.001544109	1.7e-08	100	100	100	0	0	1	-360	360;
	31	32	0.0010048967	0.002058812	2.27077704e-08	100	100	100	0	0	1	-360	360;
	17	33	0.0008374139	0.0017156767	1.8923142e-08	100	100	100	0	0	1	-360	360;
	33	34	0.0009211553	0.0018872444	2.08154562e-08	100	100	100	0	0	1	-360	360;
	34	35	0.0018423107	0.0037744887	4.16309123e-08	100	100	100	0	0	1	-360	360;
	35	36	0.0010048967	0.002058812	2.27077704e-08	100	100	100	0	0	1	-360	360;
	33	37	0.0008374139	0.0017156767	1.8923142e-08	100	100	100	0	0	1	-360	360;
	37	38	0.0009211553	0.0018872444	2.08154562e-08	100	100	100	0	0	1	-360	360;
	38	39	0.0010886381	0.0022303797	2.46000846e-08	100	100	100	0	0	1	-360	360;
	4	40	0.002763466	0.0056617331	6.24463685e-08	100	100	100	0	0	1	-360	360;
	40	41	0.0010048967	0.002058812	2.27077704e-08	100	100	100	0	0	1	-360	360;
	41	42	0.0008374139	0.0017156767	1.8923142e-08	100	100	100	0	0	1	-360	360;
	42	43	0.0009211553	0.0018872444	2.08154562e-08	100	100	100	0	0	1	-360	360;
	43	44	0.0006699312	0.0013725413	1.51385136e-08	100	100	100	0	0	1	-360	360;
	44	45	0.0010048967	0.002058812	2.27077704e-08	100	100	100	0	0	1	-360	360;
	45	46	0.0011723795	0.0024019474	2.64923988e-08	100	100	100	0	0	1	-360	360;
	40	47	0.0012561209	0.002573515	2.8384713e-08	100	100	100	0	0	1	-360	360;
	47	48	0.0008374139	0.0017156767	1.8923142e-08	100	100	100	0	0	1	-360	360;
	48	49	0.0008374139	0.0017156767	1.8923142e-08	100	100	100	0	0	1	-360	360;
	49	50	0.0006699312	0.0013725413	1.51385136e-08	100	100	100	0	0	1	-360	360;
	50	51	0.0008374139	0.0017156767	1.8923142e-08	100	100	100	0	0	1	-360	360;
	51	52	0.0005024484	0.001029406	1.13538852e-08	100	100	100	0	0	1	-360	360;
	51	53	0.0008374139	0.0017156767	1.8923142e-08	100	100	100	0	0	1	-360	360;
	53	54	0.0008374139	0.0017156767	1.8923142e-08	100	100	100	0	0	1	-360	360;
	54	55	0.0008374139	0.0017156767	1.8923142e-08	100	100	100	0	0	1	-360	360;
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	0.01	40	0;
];
     %% storage data
 % hours;
mpc.time_elapsed = 0.0167
%   storage_bus  energy  energy_rating charge_rating  discharge_rating  charge_efficiency  discharge_efficiency  thermal_rating  qmin  qmax  r  x  standby_loss  status
mpc.storage = [
	 11            0.005     0.01          1.0             1.0                 0.8                0.9                   100.0        -50.0 70.0  0.1 0.0	0.01         1;
];
