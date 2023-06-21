
/*11.3 Do While Loop*/
data luckynum;
	/* set random number seed */
	chances=3;

	do while (chances=0);
		x=rand("Integer", 1000, 9000);
		chances=chances-1;
		output;
	end;
run;

/*11.4 Do While Loop - Corrected*/
data luckynum;
	/* set random number seed */
	chances=3;

	do while (chances > 0);
		x=rand("Integer", 1000, 9000);
		chances=chances-1;
		output;
	end;
run;