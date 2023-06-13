 /*5.4.1  use the new variable in the where statement  */
 data CARS  ;
  set sashelp.cars   ;
     /*checking_amout*/
    checking_amout  = MSRP- Invoice;    
    drop  EngineSize	Cylinders	Horsepower	MPG_City	MPG_Highway	Weight	Wheelbase	Length;
    where enginesize > 3.5 and     checking_amout > 0;
 run;   

 
 
  /*5.4.2  use the if statement   */
 data CARS  ;
  set sashelp.cars   ;
     /*checking_amout*/
    checking_amout  = MSRP- Invoice;   
    drop  EngineSize	Cylinders	Horsepower	MPG_City	MPG_Highway	Weight	Wheelbase	Length;
    if enginesize > 3.5 and     checking_amout > 0;
 run;   

  
  /*5.4.3  use the if statement   */
 data CARS  ;
  set sashelp.cars   ( drop= EngineSize	Cylinders	Horsepower	MPG_City	MPG_Highway	Weight	Wheelbase	Length);
 if enginesize > 3.5 ;
 run;   


  /*5.4.4  use the if statement   */
 data CARS  ( drop= EngineSize	Cylinders	Horsepower	MPG_City	MPG_Highway	Weight	Wheelbase	Length);
  set sashelp.cars   ;
 if enginesize > 3.5 ;
 run;   

   
