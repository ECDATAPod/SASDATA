/*5.5.1 Conditional Output	*/
 data CARS_ASIA   CARS_EUROPE CARS_USA CAR_OTHER ;
   set sashelp.cars   ;
	   
	  if UPCASE(origin)  = 'ASIA' then output   CARS_ASIA;
	   else  if UPCASE(origin)  = 'EUROPE' then output   CARS_EUROPE;
	   else  if UPCASE(origin)  = 'USA' then output   CARS_USA;
	   else output CAR_OTHER; 
RUN; 


 