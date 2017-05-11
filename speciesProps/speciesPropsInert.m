function[Nspecies, species, a, A, MW, Hover] = speciesPropsInert()
	Nspecies = 9;
%				1	2	 3	    4	 5	   6 	  7	    8      9
 	species = {'Ar','CO','CO_2','He','Kr','N_2', 'Ne', 'O_2', 'H_2O'};
	MW 	= zeros(Nspecies,1);
	H 	= zeros(Nspecies,1);
	a 	= zeros(Nspecies, 7);
	A 	= zeros( Nspecies, 7);

	MW	= 	[	39.94800;	%01 - Argon
				28.01040;	%02 - CO
				44.00980;	%03 - CO2
				4.002600;	%04 - He
				83.80000;	%05 - Kr
				28.01340;	%06 - N2
				20.17970;	%07 - Ne
				31.99880;	%08 - O2
				18.01528];	%09 - H2O

%				a1				a2				a3				a4				a5				a6				a7
	a 	= 	[	+2.50000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	-7.45375000E+02	+4.37967491E+00;	%01	- Ar
				+0.30484859E+01	+0.13517281E-02	-0.48579405E-06	+0.78853644E-10	-0.46980746E-14	-0.14266117E+05	+0.60170977E+01;	%02	- CO
				+0.46365111E+01	+0.27414569E-02	-0.99589759E-06	+0.16038666E-09	-0.91619857E-14	-0.49024904E+05	-0.19348955E+01;	%03 - CO2
				+2.50000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	-7.45375000E+02	+9.28723974E-01;	%04	- He
				+2.50001436E+00	-2.78190281E-08	+1.74071629E-11	-4.31400304E-15	+3.66743374E-19	-7.45380247E+02	+5.49087778E+00;	%05 - Kr	
				+2.95257637E+00	+1.39690040E-03	-4.92631603E-07	+7.86010195E-11	-4.60755204E-15	-9.23948688E+02	+5.87188762E+00;	%06 - N2
				+2.50000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	-7.45375000E+02	+3.35532272E+00;	%07 - Ne
				+3.66096065E+00	+6.56365811E-04	-1.41149627E-07	+2.05797935E-11	-1.29913436E-15	-1.21597718E+03	+3.41536279E+00;	%08 - O2
				+0.26770389E+01	+0.29731816E-02	-0.77376889E-06	+0.94433514E-10	-0.42689991E-14	-0.29885894E+05	+0.68825500E+01];	%09 - H2O	

%				a1				a2				a3				a4				a5				a6				a7
	A 	= 	[	+2.50000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	-7.45375000E+02	+4.37967491E+00;	%01	- Ar
				+0.35795335E+01	-0.61035369E-03	+0.10168143E-05	+0.90700586E-09	-0.90442449E-12	-0.14344086E+05	+0.35084093E+01;	%02 - CO
				+0.23568130E+01	+0.89841299E-02	-0.71220632E-05	+0.24573008E-08	-0.14288548E-12	-0.48371971E+05	+0.99009035E+01;	%03 - CO2
				+2.50000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	-7.45375000E+02	+9.28723974E-01;	%04	- He
				+2.50000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	-7.45375000E+02	+5.49095651E+00;	%05 - Kr
				+3.53100528E+00	-1.23660988E-04	-5.92888433E-07	+2.43530612E-09	-1.40881235E-12	-1.04697628E+03	+2.96747038E+00;	%06 - N2
				+2.50000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	+0.00000000E+00	-7.45375000E+02	+3.35532272E+00;	%07 - Ne
				+3.78245636E+00	-2.99673416E-03	+9.84730201E-06	-9.68129509E-09	+3.24372837E-12	-1.06394356E+03	+3.65767573E+00;	%08 - O2
				+0.41986352E+01	-0.20364017E-02	+0.65203416E-05	-0.54879269E-08	+0.17719680E-11	-0.30293726E+05	-0.84900901E+00];	%09 - H2O

	Hover	= [	+0.00000000E+00;	%01	- Ar
				-0.13293628E+05;	%02 - CO
				-0.47328105E+05;	%03 - CO2
				+0.00000000E+00;	%04 - He
				+0.00000000E+00;	%05 - Kr
				+0.00000000E+00;	%06 - N2
				+0.00000000E+00;	%07 - Ne
				+0.00000000E+00;	%08 - O2
				-0.29084817E+05];	%09 - H2O

end
