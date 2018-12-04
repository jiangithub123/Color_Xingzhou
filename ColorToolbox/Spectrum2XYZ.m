function XYZ = Spectrum2XYZ(wavelength,spectrum)
%SPECTRUM2XYZ Summary of this function goes here
%   Detailed explanation goes here
colormatching = [...
    0.0001299	0.000003917	0.0006061
    0.000145847	4.39358E-06	0.000680879
    0.000163802	4.9296E-06	0.000765146
    0.000184004	5.53214E-06	0.000860012
    0.00020669	6.20825E-06	0.000966593
    0.0002321	0.000006965	0.001086
    0.000260728	7.81322E-06	0.001220586
    0.000293075	8.76734E-06	0.001372729
    0.000329388	9.83984E-06	0.001543579
    0.000369914	1.10432E-05	0.001734286
    0.0004149	0.00001239	0.001946
    0.000464159	1.38864E-05	0.002177777
    0.000518986	1.55573E-05	0.002435809
    0.000581854	1.7443E-05	0.002731953
    0.000655235	1.95838E-05	0.003078064
    0.0007416	0.00002202	0.003486
    0.00084503	2.48397E-05	0.003975227
    0.000964527	2.80413E-05	0.00454088
    0.001094949	3.1531E-05	0.00515832
    0.001231154	3.52152E-05	0.005802907
    0.001368	0.000039	0.006450001
    0.00150205	4.28264E-05	0.007083216
    0.001642328	4.69146E-05	0.007745488
    0.001802382	5.15896E-05	0.008501152
    0.001995757	5.71764E-05	0.009414544
    0.002236	0.000064	0.01054999
    0.002535385	7.23442E-05	0.0119658
    0.002892603	8.22122E-05	0.01365587
    0.003300829	9.35082E-05	0.01558805
    0.003753236	0.000106136	0.01773015
    0.004243	0.00012	0.02005001
    0.004762389	0.000134984	0.02251136
    0.005330048	0.000151492	0.02520288
    0.005978712	0.000170208	0.02827972
    0.006741117	0.000191816	0.03189704
    0.00765	0.000217	0.03621
    0.008751373	0.000246907	0.04143771
    0.01002888	0.00028124	0.04750372
    0.0114217	0.00031852	0.05411988
    0.01286901	0.000357267	0.06099803
    0.01431	0.000396	0.06785001
    0.01570443	0.000433715	0.07448632
    0.01714744	0.000473024	0.08136156
    0.01878122	0.000517876	0.08915364
    0.02074801	0.000572219	0.09854048
    0.02319	0.00064	0.1102
    0.02620736	0.00072456	0.1246133
    0.02978248	0.0008255	0.1417017
    0.03388092	0.00094116	0.1613035
    0.03846824	0.00106988	0.1832568
    0.04351	0.00121	0.2074
    0.0489956	0.001362091	0.2336921
    0.0550226	0.001530752	0.2626114
    0.0617188	0.001720368	0.2947746
    0.069212	0.001935323	0.3307985
    0.07763	0.00218	0.3713
    0.08695811	0.0024548	0.4162091
    0.09717672	0.002764	0.4654642
    0.1084063	0.0031178	0.5196948
    0.1207672	0.0035264	0.5795303
    0.13438	0.004	0.6456
    0.1493582	0.00454624	0.7184838
    0.1653957	0.00515932	0.7967133
    0.1819831	0.00582928	0.8778459
    0.198611	0.00654616	0.959439
    0.21477	0.0073	1.0390501
    0.2301868	0.008086507	1.1153673
    0.2448797	0.00890872	1.1884971
    0.2587773	0.00976768	1.2581233
    0.2718079	0.01066443	1.3239296
    0.2839	0.0116	1.3856
    0.2949438	0.01257317	1.4426352
    0.3048965	0.01358272	1.4948035
    0.3137873	0.01462968	1.5421903
    0.3216454	0.01571509	1.5848807
    0.3285	0.01684	1.62296
    0.3343513	0.01800736	1.6564048
    0.3392101	0.01921448	1.6852959
    0.3431213	0.02045392	1.7098745
    0.3461296	0.02171824	1.7303821
    0.34828	0.023	1.74706
    0.3495999	0.02429461	1.7600446
    0.3501474	0.02561024	1.7696233
    0.350013	0.02695857	1.7762637
    0.349287	0.02835125	1.7804334
    0.34806	0.0298	1.7826
    0.3463733	0.03131083	1.7829682
    0.3442624	0.03288368	1.7816998
    0.3418088	0.03452112	1.7791982
    0.3390941	0.03622571	1.7758671
    0.3362	0.038	1.77211
    0.3331977	0.03984667	1.7682589
    0.3300411	0.041768	1.764039
    0.3266357	0.043766	1.7589438
    0.3228868	0.04584267	1.7524663
    0.3187	0.048	1.7441
    0.3140251	0.05024368	1.7335595
    0.308884	0.05257304	1.7208581
    0.3032904	0.05498056	1.7059369
    0.2972579	0.05745872	1.6887372
    0.2908	0.06	1.6692
    0.2839701	0.06260197	1.6475287
    0.2767214	0.06527752	1.6234127
    0.2689178	0.06804208	1.5960223
    0.2604227	0.07091109	1.564528
    0.2511	0.0739	1.5281
    0.2408475	0.077016	1.4861114
    0.2298512	0.0802664	1.4395215
    0.2184072	0.0836668	1.3898799
    0.2068115	0.0872328	1.3387362
    0.19536	0.09098	1.28764
    0.1842136	0.09491755	1.2374223
    0.1733273	0.09904584	1.1878243
    0.1626881	0.1033674	1.1387611
    0.1522833	0.1078846	1.090148
    0.1421	0.1126	1.0419
    0.1321786	0.117532	0.9941976
    0.1225696	0.1226744	0.9473473
    0.1132752	0.1279928	0.9014531
    0.1042979	0.1334528	0.8566193
    0.09564	0.13902	0.8129501
    0.08729955	0.1446764	0.7705173
    0.07930804	0.1504693	0.7294448
    0.07171776	0.1564619	0.6899136
    0.06458099	0.1627177	0.6521049
    0.05795001	0.1693	0.6162
    0.05186211	0.1762431	0.5823286
    0.04628152	0.1835581	0.5504162
    0.04115088	0.1912735	0.5203376
    0.03641283	0.199418	0.4919673
    0.03201	0.20802	0.46518
    0.0279172	0.2171199	0.4399246
    0.0241444	0.2267345	0.4161836
    0.020687	0.2368571	0.3938822
    0.0175404	0.2474812	0.3729459
    0.0147	0.2586	0.3533
    0.01216179	0.2701849	0.3348578
    0.00991996	0.2822939	0.3175521
    0.00796724	0.2950505	0.3013375
    0.006296346	0.308578	0.2861686
    0.0049	0.323	0.272
    0.003777173	0.3384021	0.2588171
    0.00294532	0.3546858	0.2464838
    0.00242488	0.3716986	0.2347718
    0.002236293	0.3892875	0.2234533
    0.0024	0.4073	0.2123
    0.00292552	0.4256299	0.2011692
    0.00383656	0.4443096	0.1901196
    0.00517484	0.4633944	0.1792254
    0.00698208	0.4829395	0.1685608
    0.0093	0.503	0.1582
    0.01214949	0.5235693	0.1481383
    0.01553588	0.544512	0.1383758
    0.01947752	0.56569	0.1289942
    0.02399277	0.5869653	0.1200751
    0.0291	0.6082	0.1117
    0.03481485	0.6293456	0.1039048
    0.04112016	0.6503068	0.09666748
    0.04798504	0.6708752	0.08998272
    0.05537861	0.6908424	0.08384531
    0.06327	0.71	0.07824999
    0.07163501	0.7281852	0.07320899
    0.08046224	0.7454636	0.06867816
    0.08973996	0.7619694	0.06456784
    0.09945645	0.7778368	0.06078835
    0.1096	0.7932	0.05725001
    0.1201674	0.8081104	0.05390435
    0.1311145	0.8224962	0.05074664
    0.1423679	0.8363068	0.04775276
    0.1538542	0.8494916	0.04489859
    0.1655	0.862	0.04216
    0.1772571	0.8738108	0.03950728
    0.18914	0.8849624	0.03693564
    0.2011694	0.8954936	0.03445836
    0.2133658	0.9054432	0.03208872
    0.2257499	0.9148501	0.02984
    0.2383209	0.9237348	0.02771181
    0.2510668	0.9320924	0.02569444
    0.2639922	0.9399226	0.02378716
    0.2771017	0.9472252	0.02198925
    0.2904	0.954	0.0203
    0.3038912	0.9602561	0.01871805
    0.3175726	0.9660074	0.01724036
    0.3314384	0.9712606	0.01586364
    0.3454828	0.9760225	0.01458461
    0.3597	0.9803	0.0134
    0.3740839	0.9840924	0.01230723
    0.3886396	0.9874182	0.01130188
    0.4033784	0.9903128	0.01037792
    0.4183115	0.9928116	0.009529306
    0.4334499	0.9949501	0.008749999
    0.4487953	0.9967108	0.0080352
    0.464336	0.9980983	0.0073816
    0.480064	0.999112	0.0067854
    0.4959713	0.9997482	0.0062428
    0.5120501	1	0.005749999
    0.5282959	0.9998567	0.0053036
    0.5446916	0.9993046	0.0048998
    0.5612094	0.9983255	0.0045342
    0.5778215	0.9968987	0.0042024
    0.5945	0.995	0.0039
    0.6112209	0.9926005	0.0036232
    0.6279758	0.9897426	0.0033706
    0.6447602	0.9864444	0.0031414
    0.6615697	0.9827241	0.0029348
    0.6784	0.9786	0.002749999
    0.6952392	0.9740837	0.0025852
    0.7120586	0.9691712	0.0024386
    0.7288284	0.9638568	0.0023094
    0.7455188	0.9581349	0.0021968
    0.7621	0.952	0.0021
    0.7785432	0.9454504	0.002017733
    0.7948256	0.9384992	0.0019482
    0.8109264	0.9311628	0.0018898
    0.8268248	0.9234576	0.001840933
    0.8425	0.9154	0.0018
    0.8579325	0.9070064	0.001766267
    0.8730816	0.8982772	0.0017378
    0.8878944	0.8892048	0.0017112
    0.9023181	0.8797816	0.001683067
    0.9163	0.87	0.001650001
    0.9297995	0.8598613	0.001610133
    0.9427984	0.849392	0.0015644
    0.9552776	0.838622	0.0015136
    0.9672179	0.8275813	0.001458533
    0.9786	0.8163	0.0014
    0.9893856	0.8047947	0.001336667
    0.9995488	0.793082	0.00127
    1.0090892	0.781192	0.001205
    1.0180064	0.7691547	0.001146667
    1.0263	0.757	0.0011
    1.0339827	0.7447541	0.0010688
    1.040986	0.7324224	0.0010494
    1.047188	0.7200036	0.0010356
    1.0524667	0.7074965	0.0010212
    1.0567	0.6949	0.001
    1.0597944	0.6822192	0.00096864
    1.0617992	0.6694716	0.00092992
    1.0628068	0.6566744	0.00088688
    1.0629096	0.6438448	0.00084256
    1.0622	0.631	0.0008
    1.0607352	0.6181555	0.00076096
    1.0584436	0.6053144	0.00072368
    1.0552244	0.5924756	0.00068592
    1.0509768	0.5796379	0.00064544
    1.0456	0.5668	0.0006
    1.0390369	0.5539611	0.000547867
    1.0313608	0.5411372	0.0004916
    1.0226662	0.5283528	0.0004354
    1.0130477	0.5156323	0.000383467
    1.0026	0.503	0.00034
    0.9913675	0.4904688	0.000307253
    0.9793314	0.4780304	0.00028316
    0.9664916	0.4656776	0.00026544
    0.9528479	0.4534032	0.000251813
    0.9384	0.4412	0.00024
    0.923194	0.42908	0.000229547
    0.907244	0.417036	0.00022064
    0.890502	0.405032	0.00021196
    0.87292	0.393032	0.000202187
    0.8544499	0.381	0.00019
    0.835084	0.3689184	0.000174213
    0.814946	0.3568272	0.00015564
    0.794186	0.3447768	0.00013596
    0.772954	0.3328176	0.000116853
    0.7514	0.321	0.0001
    0.7295836	0.3093381	8.61333E-05
    0.7075888	0.2978504	0.0000746
    0.6856022	0.2865936	0.000065
    0.6638104	0.2756245	5.69333E-05
    0.6424	0.265	5E-05
    0.6215149	0.2547632	0.00004416
    0.6011138	0.2448896	0.00003948
    0.5811052	0.2353344	0.00003572
    0.5613977	0.2260528	0.00003264
    0.5419	0.217	0.00003
    0.5225995	0.2081616	2.76533E-05
    0.5035464	0.1995488	0.00002556
    0.4847436	0.1911552	0.00002364
    0.4661939	0.1829744	2.18133E-05
    0.4479	0.175	0.00002
    0.4298613	0.1672235	1.81333E-05
    0.412098	0.1596464	0.0000162
    0.394644	0.1522776	0.0000142
    0.3775333	0.1451259	1.21333E-05
    0.3608	0.1382	0.00001
    0.3444563	0.1315003	7.73333E-06
    0.3285168	0.1250248	0.0000054
    0.3130192	0.1187792	0.0000032
    0.2980011	0.1127691	1.33333E-06
    0.2835	0.107	0
    0.2695448	0.1014762	0
    0.2561184	0.09618864	0
    0.2431896	0.09112296	0
    0.2307272	0.08626485	0
    0.2187	0.0816	0
    0.2070971	0.07712064	0
    0.1959232	0.07282552	0
    0.1851708	0.06871008	0
    0.1748323	0.06476976	0
    0.1649	0.061	0
    0.1553667	0.05739621	0
    0.14623	0.05395504	0
    0.13749	0.05067376	0
    0.1291467	0.04754965	0
    0.1212	0.04458	0
    0.1136397	0.04175872	0
    0.106465	0.03908496	0
    0.09969044	0.03656384	0
    0.09333061	0.03420048	0
    0.0874	0.032	0
    0.08190096	0.02996261	0
    0.07680428	0.02807664	0
    0.07207712	0.02632936	0
    0.06768664	0.02470805	0
    0.0636	0.0232	0
    0.05980685	0.02180077	0
    0.05628216	0.02050112	0
    0.05297104	0.01928108	0
    0.04981861	0.01812069	0
    0.04677	0.017	0
    0.04378405	0.01590379	0
    0.04087536	0.01483718	0
    0.03807264	0.01381068	0
    0.03540461	0.01283478	0
    0.0329	0.01192	0
    0.03056419	0.01106831	0
    0.02838056	0.01027339	0
    0.02634484	0.009533311	0
    0.02445275	0.008846157	0
    0.0227	0.00821	0
    0.02108429	0.007623781	0
    0.01959988	0.007085424	0
    0.01823732	0.006591476	0
    0.01698717	0.006138485	0
    0.01584	0.005723	0
    0.01479064	0.005343059	0
    0.01383132	0.004995796	0
    0.01294868	0.004676404	0
    0.0121292	0.004380075	0
    0.01135916	0.004102	0
    0.01062935	0.003838453	0
    0.009938846	0.003589099	0
    0.009288422	0.003354219	0
    0.008678854	0.003134093	0
    0.008110916	0.002929	0
    0.007582388	0.002738139	0
    0.007088746	0.002559876	0
    0.006627313	0.002393244	0
    0.006195408	0.002237275	0
    0.005790346	0.002091	0
    0.005409826	0.001953587	0
    0.005052583	0.00182458	0
    0.004717512	0.00170358	0
    0.004403507	0.001590187	0
    0.004109457	0.001484	0
    0.003833913	0.001384496	0
    0.003575748	0.001291268	0
    0.003334342	0.001204092	0
    0.003109075	0.001122744	0
    0.002899327	0.001047	0
    0.002704348	0.00097659	0
    0.00252302	0.000911109	0
    0.002354168	0.000850133	0
    0.002196616	0.000793238	0
    0.00204919	0.00074	0
    0.00191096	0.000690083	0
    0.001781438	0.00064331	0
    0.00166011	0.000599496	0
    0.001546459	0.000558455	0
    0.001439971	0.00052	0
    0.001340042	0.000483914	0
    0.001246275	0.000450053	0
    0.001158471	0.000418345	0
    0.00107643	0.000388718	0
    0.000999949	0.0003611	0
    0.000928736	0.000335384	0
    0.000862433	0.00031144	0
    0.00080075	0.000289166	0
    0.000743396	0.000268454	0
    0.000690079	0.0002492	0
    0.000640516	0.000231302	0
    0.000594502	0.000214686	0
    0.000551865	0.000199288	0
    0.000512429	0.000185048	0
    0.000476021	0.0001719	0
    0.000442454	0.000159778	0
    0.000411512	0.000148604	0
    0.000382981	0.000138302	0
    0.000356649	0.000128793	0
    0.000332301	0.00012	0
    0.000309759	0.00011186	0
    0.000288887	0.000104322	0
    0.000269539	9.73356E-05	0
    0.000251568	9.08459E-05	0
    0.000234826	0.0000848	0
    0.000219171	7.91467E-05	0
    0.000204526	0.000073858	0
    0.000190841	0.000068916	0
    0.000178065	6.43027E-05	0
    0.000166151	0.00006	0
    0.000155024	5.59819E-05	0
    0.000144622	5.22256E-05	0
    0.00013491	4.87184E-05	0
    0.000125852	4.54475E-05	0
    0.000117413	0.0000424	0
    0.000109552	3.9561E-05	0
    0.000102225	3.69151E-05	0
    9.53945E-05	3.44487E-05	0
    8.90239E-05	3.21482E-05	0
    8.30753E-05	0.00003	0
    7.75127E-05	2.79913E-05	0
    7.2313E-05	2.61136E-05	0
    6.74578E-05	2.43602E-05	0
    6.29284E-05	2.27246E-05	0
    5.87065E-05	0.0000212	0
    5.47703E-05	1.97786E-05	0
    5.10992E-05	1.84529E-05	0
    4.76765E-05	1.72169E-05	0
    4.44857E-05	1.60646E-05	0
    4.15099E-05	0.00001499	0
    3.87332E-05	1.39873E-05	0
    3.6142E-05	1.30516E-05	0
    3.37235E-05	1.21782E-05	0
    3.14649E-05	1.13625E-05	0
    2.93533E-05	0.0000106	0
    2.73757E-05	9.88588E-06	0
    2.55243E-05	9.2173E-06	0
    2.37938E-05	8.59236E-06	0
    2.21787E-05	8.00913E-06	0
    2.06738E-05	7.4657E-06	0
    1.92723E-05	6.95957E-06	0
    1.79664E-05	6.488E-06	0
    1.67499E-05	6.0487E-06	0
    1.56165E-05	5.6394E-06	0
    1.45598E-05	5.2578E-06	0
    1.35739E-05	4.90177E-06	0
    1.26544E-05	4.56972E-06	0
    1.17972E-05	4.26019E-06	0
    1.09984E-05	3.97174E-06	0
    1.0254E-05	3.7029E-06	0
    9.55965E-06	3.45216E-06	0
    8.91204E-06	3.2183E-06	0
    8.30836E-06	3.0003E-06	0
    7.74577E-06	2.79714E-06	0
    7.22146E-06	2.6078E-06	0
    6.73248E-06	2.43122E-06	0
    6.27642E-06	2.26653E-06	0
    5.8513E-06	2.11301E-06	0
    5.45512E-06	1.96994E-06	0
    5.08587E-06	1.8366E-06	0
    4.74147E-06	1.71223E-06	0
    4.42024E-06	1.59623E-06	0
    4.12078E-06	1.48809E-06	0
    3.84172E-06	1.38731E-06	0
    3.58165E-06	1.2934E-06	0
    3.33913E-06	1.20582E-06	0
    3.11295E-06	1.12414E-06	0
    2.90212E-06	1.04801E-06	0
    2.70565E-06	9.77058E-07	0
    2.52253E-06	9.1093E-07	0
    2.35173E-06	8.49251E-07	0
    2.19242E-06	7.91721E-07	0
    2.0439E-06	7.3809E-07	0
    1.9055E-06	6.8811E-07	0
    1.77651E-06	6.4153E-07	0
    1.65622E-06	5.9809E-07	0
    1.54402E-06	5.57575E-07	0
    1.43944E-06	5.19808E-07	0
    1.34198E-06	4.84612E-07	0
    1.25114E-06	4.5181E-07	0
    ];
if(size(wavelength,1) == 1)
    wavelength = wavelength';
end
if(size(spectrum,1) == 1)
    spectrum = spectrum';
end
sp_itp = interp1q(wavelength,spectrum,(360:830)');
sp_itp(isnan(sp_itp)) = 0;
XYZ = sp_itp' * colormatching;

end
