/*11.2 Do Until Loop*/
data luckynum;
	/* set random number seed */
	chances=3;

	do until (chances=0);
		x=rand("Integer", 1000, 9000);
		chances=chances-1;
		output;
	end;
run;
