/* 11.1 Do Loop */
data next_3yr_sal;
	retain sal_year sal;

	do i=1 to 3;

		if i=1 then
			do;
				beg_year=year(date());
				beg_salary=1800;
				sal_year=beg_year;
				sal=beg_salary;
			end;
			

		sal_year=sal_year+1;
		sal=sal *1.10;
		output;
	end;
run;
