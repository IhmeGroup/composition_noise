function[Nspecies, species, a, A, MW,Hover] = speciesPropsH2()
	Nspecies = 11;
%				1		2		3		4		5		6		7		8   		9		10		11		12		13
	species = { 'N_2', 	'Ar', 	'H',	'O_2',	'O',	'OH',	'H_2',	'H_2O',	'He',	'HO_2',	'H2O2'};
	MW 	= zeros(Nspecies,1);
	H 	= zeros(Nspecies,1);
	a 	= zeros(Nspecies, 7);
	A 	= zeros( Nspecies, 7);

	MW =	     [28.01349;%1 - N2
				  39.94800;%2 - Ar
		 		  01.00794;%3 - H
				  31.99880;%4 - O2
				  15.99940;%5 - O
				  17.00734;%6 - OH
				  02.01588;%7 - H_2
				  18.01528;%8 - H2O
			      04.00260;%9 - He
				  33.00674;%10 - HO2
				  34.01468;%11 - H2O2
				];

%				a1				a2				a3				a4				a5				a6				a7
	a(:,:) = [ 	+2.95257637E+00	+1.39690040E-03	-4.92631603E-07	+7.86010195E-11	-4.60755204E-15	-9.23948688E+02	+5.87188762E+00;	%1		- 	N2
				+2.50000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	-7.45375000E+02	+4.37967491E+00;	%2		-	Ar
				+0.25000000E+01	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	+0.25473660E+05	-0.44668285E+00;	%3 		- 	H
				+3.66096065E+00	+6.56365811E-04	-1.41149627E-07	+2.05797935E-11	-1.29913436E-15	-1.21597718E+03	+3.41536279E+00;	%4 		- 	O2
				+2.54363697E+00	-2.73162486E-05	-4.19029520E-09	+4.95481845E-12	-4.79553694E-16	+2.92260120E+04	+4.92229457E+00;	%5		- 	O
				+2.83853033E+00	+1.10741289E-03	-2.94000209E-07	+4.20698729E-11	-2.42289890E-15	+3.69780808E+03	+5.84494652E+00;	%6		- 	OH
				+2.93286575E+00	+8.26608026E-04	-1.46402364E-07	+1.54100414E-11	-6.88804800E-16	-8.13065581E+02	-1.02432865E+00;	%7 		-	H2
				+0.26770389E+01	+0.29731816E-02	-0.77376889E-06	+0.94433514E-10	-0.42689991E-14	-0.29885894E+05	+0.68825500E+01;	%8 		- 	H2O
				+2.50000000E+00	+0.00000000E+00	0.000000000E+00	+0.00000000E+00	+0.00000000E+00	-7.45375000E+02	+9.28723974E-01;	%9		-	He
				+4.17228741E+00	+1.88117627E-03	-3.46277286E-07	+1.94657549E-11	+1.76256905E-16	+3.10206839E+01	+2.95767672E+00;	%10		-	HO2
				+4.57977305E+00	+4.05326003E-03	-1.29844730E-06	+1.98211400E-10	-1.13968792E-14	-1.80071775E+04	+6.64970694E-01];	%11		-	H2O2
					
%				a1				a2				a3				a4				a5				a6				a7
	A(:,:)	= [	+3.53100528E+00	-1.23660988E-04	-5.02999433E-07	+2.43530612E-09	-1.40881235E-12	-1.04697628E+03	+2.96747038E+00;	%1 		-	N2
				+2.50000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	-7.45375000E+02	+4.37967491E+00;	%2		-	Ar
				+0.25000000E+01	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	+0.25473660E+05	-0.44668285E+00;	%3		-	H
				+3.78245636E+00	-2.99673416E-03	+9.84730201E-06	-9.68129509E-09	+3.24372837E-12	-1.06394356E+03	+3.65767573E+00;	%4		-	O2
				+3.16826710E+00	-3.27931884E-03	+6.64306396E-06	-6.12806624E-09	+2.11265971E-12	+2.91222592E+04	+2.05193346E+00;	%5		-	O
				+3.99198424E+00	-2.40106655E-03	+4.61664033E-06	-3.87916306E-09	+1.36319502E-12	+3.36889836E+03	-1.03998477E-01;	%6		-	OH
				+2.34433112E+00	+7.98052075E-03	-1.94781410E-05	+2.01572094E-08	-7.37611761E-12	-9.17935173E+02	+6.83010238E-01;	%7		-	H2
				+0.41986352E+01	-0.20364017E-02	+0.65203416E-05	-0.54879269E-08	+0.17719680E-11	-0.30293726E+05	-0.84900901E+00;	%8		-	H2O
				+2.50000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	-7.45375000E+02	+0.28723974E-01;	%9		-	He
				+4.30179807E+00	-4.74912097E-03	+2.11582905E-05	-2.42763914E-08	+0.29225225E-12	+2.64018485E+02	+3.71666220E+00;	%10		-	HO2
				+4.31515149E+00	-8.47390622E-04	+1.76404323E-05	-2.26762944E-08	+0.08950158E-12	-1.77067437E+04	+3.27373319E+00];	%11		-	H2O2


	Hover(:)	= [	+0.00000000E+00;	%1	-	N2
					+0.00000000E+00;	%2 	- 	Ar
					+0.26219035E+05;	%3	-	H
					+0.00000000E+00;	%4	-	O2
					+2.99687009E+04;	%5	- 	O
					+4.48615380E+03;	%6 	-	OH
					+0.00000000E+00;	%7	-	H2
					-0.29084817E+05;	%8	-	H2O
					+0.00000000E+00;	%9	-	He
					+1.47886045E+03;	%10	- 	HO2
					-1.63425145E+04];	%11 - 	H2O2	
end
