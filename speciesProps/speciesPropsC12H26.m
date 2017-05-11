function[Nspecies, species, a, A, MW, Hover] = speciesPropsC12H26()
	Nspecies = 24;
%				1		2		3		4		5		6		7			8		9		10		11			12		13		14			15			16			17			18			19			20				21					22					23				24
	species = {	'H', 	'O', 	'OH', 	'HO_2', 'H_2', 	'H_2O', 'H_2O_2', 	'O_2', 	'CH_3', 'CH_4', 'CH_2O', 	'CO', 	'CO_2', 'C_2H_2', 	'C_2H_4', 	'C_2H_6', 	'CH_2CHO', 	'A-C_3H_5', 'C_3H_6', 	'C_2H_3CHO', 	'C_4H_81-C_4H_8', 	'N_C_{12}H_{26}', 	'C_6H_{12}', 	'N_2'};

	Hover = zeros(Nspecies,1);
	a 	= zeros(Nspecies, 7);
	A 	= zeros( Nspecies, 7);

	MW = 		[1.00794;% 1 - H - found
				 15.99940;% 2 - O - found
				 17.00734;% 3 - OH - found
				 33.00674;% 4 - HO2 - found
				 2.01588;% 5 - H2 - found
				 18.01528;% 6 - H2O - found
				 34.01468;% 7 - H2O2 - found
				 31.99880;% 8 - O2 - found
				 15.03452;% 9 - CH3 - found
				 16.04246;%10 - CH4 - found
				 30.02598;%11 - CH2O - found
				 28.01040;%12 - CO - found
				 44.00980;%13 - CO2 - found
				 26.03728;%14 - C2H2 - found
				 28.05316;%15 - C2H4 - found
				 30.06904;%16 - C2H6 - found
				 42.03668;%17 - CH2CO - C2H2O (Ketene) found
				 41.07180;%18 - A-C3H5 - found (Allyl)
				 42.07974;%19 - C3H6 - found (propylene)
				 56.06326;%20 - C2H3CHO - C3H4O 2-Propenal per astronomy literature
				 56.10632;%21 - C4H81-C4H8 - 1-butene
				 170.33844;%22 - N-C12H26 - found
				 84.15948;%23 - C6H12 - 1-hexene
				 28.01340];%24 - N2 - found

%				a1				a2				a3				a4				a5				a6				a7
	a(:,:) 	= [	+0.25000000e+01	+0.00000000e+00	+0.00000000e+00	+0.00000000e+00	+0.00000000e+00	+0.25473660e+05	-0.44668285E+00;%1 - H
				+2.54363697E+00	-2.73162486E-05	-4.19029520e-09	+4.95481845e-12	-4.79553694e-16	+2.92260120e+04	+4.92229457e+00;%2 - O
				+2.83853033E+00	+1.10741289e-03	-2.94008209e-07	+4.20698729e-11	-2.42289890e-15	+3.69780808e+03	+5.84494652e+00;%3 - OH
				+4.17228741E+00	+1.88117627e-03	-3.46277286e-07	+1.94657549e-11	+1.76256906e-16	+3.10206839e+01	+2.95767672E+00;%4 - HO2
				+2.93286575E+00	+8.26608026E-04	-1.46402364E-07	+1.54100414E-11	-6.88804800E-16	-8.13065581E+02	-1.02432865E+00;%5 - H2
				+0.26770389E+01	+0.29731816E-02	-0.77376889E-06	+0.94433514E-10	-0.42689991E-14	-0.29885894E+05	+0.68825500E+01;%6 - H2O
				+4.57977305E+00	+4.05326003E-03	-1.29844730E-06	+1.98211400E-10	-1.13968792E-14	-1.80071775E+04	+6.64970694E-01;%7 - H2O2
				+3.66096065E+00	+6.56365811E-04	-1.41149627E-07	+2.05797935E-11	-1.29913436E-15	-1.21597718E+03	+3.41536279E+00;%8 - O2
				+0.29781206E+01	+0.57978520E-02	-0.19755800E-05	+0.30729790E-09	-0.17917416E-13	+0.16509513E+05	+0.47224799E+01;%9 - CH3
				+1.91178600E+00	+9.60267960E-03	-3.38387841E-06	+5.38797240E-10	-3.19306807E-14	-1.00992136E+04	+8.48241861E+00;%10 - CH4
				+3.16952665E+00	+6.19320560E-03	-2.25056366E-06	+3.65975660E-10	-2.20149458E-14	-1.45486831E+04	+6.04207898E+00;%11 - CH2O
				+0.30484859E+01	+0.13517281E-02	-0.48579405E-06	+0.78853644E-10	-0.46980746E-14	-0.14266117E+05	+0.60170977E+01;%12 - CO
				+0.46365111E+01	+0.27414569E-02	-0.99589759E-06	+0.16038666E-09	-0.91619857E-14	-0.49024904E+05	-0.19348955E+01;%13 - CO2
				+4.65878489E+00	+4.88396667E-03	-1.60828888E-06	+2.46974544E-10	-1.38605959E-14	+2.57594042E+04	-3.99838194E+00;%14 - C2H2
				+3.99182724E+00	+1.04833908E-02	-3.71721342E-06	+5.94628366E-10	-3.53630386E-14	+4.26865861E+03	-2.69081762E-01;%15 - C2H4
				+4.04666411E+00	+1.53538802E-02	-5.47039485E-06	+8.77826544E-10	-5.23167531E-14	-1.24473499E+04	-9.68698313E-01;%16 - C2H6
				+5.75871449E+00	+6.35124053E-03	-2.25955361E-06	+3.62321512E-10	-2.15855515E-14	-8.08533464E+03	-4.96490444E+00;%17 - C2H2O
				+6.74633155E+00	+1.31071760E-02	-4.60059113E-06	+7.31029510E-10	-4.32759674E-14	+1.71151431E+04	-1.25248814E+01;%18 - C3H5
				+6.03870234E+00	+1.62963931E-02	-5.82130800E-06	+9.35936829E-10	-5.58603143E-14	-7.41715057E+02	-8.43825992E+00;%19 - C3H6
				+8.20654919E+00	+1.28492916E-02	-4.64285331E-06	+7.51738738E-10	-4.51298116E-14	-1.18838341E+04	-1.49881933E+01;%20 - C3H4O
				+7.86795262E+00	+2.24448843E-02	-8.07705438E-06	+1.30179988E-09	-7.77958472E-14	-4.23853340E+03	-1.65662549E+01;%21 - C4H8
				+3.70187925E+01	+5.54721488E-02	-1.92079548E-05	+3.08175574E-09	-1.84800617E-13	-5.26984458E+04	-1.61453501E+02;%22 - N-C12H26
				+1.22080929E+01	+3.32790650E-02	-1.19875911E-05	+1.92939941E-09	-1.15062647E-13	-1.12223522E+04	-3.43171769E+01;%23 - C6H12
				+2.95257637E+00	+1.39690040E-03	-4.92631603E-07	+7.86010195E-11	-4.60755204E-15	-9.23948688E+02	+5.87188762E+00];%24 - N2

	A(:,:) 	= [	+0.25000000e+01	+0.00000000e+00	+0.00000000e+00	+0.00000000e+00	+0.00000000e+00	+0.25473660e+05	-0.44668285E+00;%1 - H
				+3.16826710E+00	-3.27931884e-03	+6.64306396e-06	-6.12806624e-09	+2.11265971e-12	+2.91222592e+04	+2.05193346e+00;%2 - O
				+3.99193424E+00	-2.40106655e-03	+4.61664033e-06	-3.87916306e-09	+1.36319502e-12	+3.36889836E+03	-1.03998477e-01;%3 - OH
				+4.30179807e+00	-4.74912097e-03	+2.11582905E-05	-2.42763914e-08	+9.29225225e-12	+2.64018485e+02	+3.71666220e+00;%4 - HO2
				+2.34433112E+00	+7.98052075E-03	-1.94781410E-05	+2.01572094E-08	-7.37611761E-12	-9.17935173E+02	+6.83010238E-01;%5 - H2
				+0.41986352E+01	-0.20364017E-02	+0.65203416E-05	-0.54879269E-08	+0.17719680E-11	-0.30293726E+05	-0.84900901E+00;%6 - H2O
				+4.31515149E+00	-8.47390622E-04	+1.76404323E-05	-2.26762944E-08	+9.08950158E-12	-1.77067437E+04	+3.27373319E+00;%7 - H2O2
				+3.78245636E+00	-2.99673416E-03	+9.84730201E-06	-9.68129509E-09	+3.24372837E-12	-1.06394356E+03	+3.65767573E+00;%8 - O2
				+0.36571797E+01	+0.21265979E-02	+0.54583883E-05	-0.66181003E-08	+0.24657074E-11	+0.16422716E+05	+0.16735354E+01;%9 - CH3
				+5.14825732E+00	-1.37002410E-02	+4.93749414E-05	-4.91952339E-08	+1.70097299E-11	-1.02453222E+04	-4.63322726E+00;%10 - CH4
				+4.79372312E+00	-9.90833322E-03	+3.73219990E-05	-3.79285237E-08	+1.31772641E-11	-1.43791953E+04	+6.02798058E-01;%11 - CH2O
				+0.35795335E+01	-0.61035369E-03	+0.10168143E-05	+0.90700586E-09	-0.90442449E-12	-0.14344086E+05	+0.35084093E+01;%12 - CO
				+0.23568130E+01	+0.89841299E-02	-0.71220632E-05	+0.24573008E-08	-0.14288548E-12	-0.48371971E+05	+0.99009035E+01;%13 - CO2
				+8.08679682E-01	+2.33615762E-02	-3.55172234E-05	+2.80152958E-08	-8.50075165E-12	+2.64289808E+04	+1.39396761E+01;%14 - C2H2
				+3.95920063E+00	-7.57051373E-03	+5.70989993E-05	-6.91588352E-08	+2.69884190E-11	+5.08977598E+03	+4.09730213E+00;%15 - C2H4
				+4.29142572E+00	-5.50154901E-03	+5.99438458E-05	-7.08466469E-08	+2.68685836E-11	-1.15222056E+04	+2.66678994E+00;%16 - C2H6
				+2.13241136E+00	+1.81319455E-02	-1.74093315E-05	+9.35336040E-09	-2.01724844E-12	-7.14808520E+03	+1.33807969E+01;%17 - C2H2O
				+1.65533607E+00	+1.63688750E-02	+2.10544223E-05	-4.24018394E-08	+1.92638759E-11	+1.89454047E+04	+1.61040987E+01;%18 - C3H5
				+3.83464468E+00	+3.29078952E-03	+5.05228001E-05	-6.66251176E-08	+2.63707473E-11	+7.88717123E+02	+7.88717123E+02;%19 - C3H6
				+4.69868861E+00	+4.99965957E-03	+4.38587397E-05	-6.12883900E-08	+2.48508985E-11	-1.00875286E+04	+7.29812046E+00;%20 - C3H4O
				+5.13226136E+00	+5.33862838E-03	+6.02928960E-05	-7.60364685E-08	+2.87324693E-11	-2.16718358E+03	+3.82936810E+00;%21 - C4H8
				+2.13264480E+01	-3.86394002E-02	+3.99476113E-04	-5.06681097E-07	+2.00697878E-10	-4.22475053E+04	-4.85848300E+01;%22 - N-C12H26
				+6.59375238E+00	+5.81209593E-03	+1.17056541E-04	-1.57671202E-07	+6.35227163E-11	-7.71664325E+03	+4.70097229E+00;%23 - C6H12
				+3.53100528E+00	-1.23660988E-04	-5.02999433E-07	+2.43530612E-09	-1.40881235E-12	-1.04697628E+03	+2.96747038E+00];%24 - N2

	Hover 	= [	+0.26219035e+05;	%1 - H
				+2.99687009e+04;	%2 - O
				+4.48615380E+03;	%3 - OH
				+1.47886045E+03;	%4 - HO2
				+0.00000000E+00;	%5 - H2
				-0.29084817E+05;	%6 - H2O
				-1.63425145E+04;	%7 - H2O2
				+0.00000000E+00;	%8 - O2
				+0.17643935E+05;	%9 - CH3
				-8.97226656E+03;	%10 - CH4
				-1.31293365E+04;	%11 - CH2O
				-0.13293628E+05;	%12 - CO
				-0.47328105E+05;	%13 - CO2
				+2.74459950E+04;	%14 - C2H2
				+6.31426266E+03;	%15 - C2H4
				-1.00849652E+04;	%16 - C2H6
				-5.84267744E+03;	%17 - C2H2O
				+2.02778035E+04;	%18 - C3H5
				+2.40543339E+03;	%19 - C3H6
				-8.18629119E+03;	%20 - C3H4O
				-3.72842176E+00;	%21 - C4H8		
				-3.49836226E+04;	%22 - N-C12H26
				-4.73979778E+03;	%23 - C6H12
				+0.00000000E+00];	%24 - N2
end
