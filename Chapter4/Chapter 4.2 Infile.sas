/* Demo1*/
/*Commented Length Statement*/
data test1;
    infile '/home/u63372573/Importing/sales_data.csv' DLM=',' DSD MISSOVER FIRSTOBS=2;
/* 	length  ID $8 DATE 8   Product $9  Price 8 Quantity 8 Total 8; */
 	input ID $ DATE    Product $  Price Quantity Total ;  
    informat DATE YYMMDD10. Price dollar10.2  Total dollar10.2; 
    format DATE YYMMDD10. Price dollar10.2  Total dollar10.2; 
run;

/* Demo1*/
/*Uncomment Length Statement*/
data test1;
    infile '/home/u63372573/Importing/sales_data.csv' DLM=',' DSD MISSOVER FIRSTOBS=2;
 length  ID $8 DATE 8   Product $9  Price 8 Quantity 8 Total 8;
 	input ID $ DATE    Product $  Price Quantity Total ;  
    informat DATE YYMMDD10. Price dollar10.2  Total dollar10.2; 
    format DATE YYMMDD10. Price dollar10.2  Total dollar10.2; 
run;

/* Demo2*/
/*10% discount on Product B and 20% discount on not product b product*/
data test2;
    infile '/home/u63372573/Importing/sales_data.csv' DLM=',' DSD MISSOVER FIRSTOBS=2;
    length  ID $8 DATE 8   Product $9  Price 8 Quantity 8 Total 8;
 	input ID $ DATE    Product $  Price Quantity Total ;  
    informat DATE YYMMDD10. Price dollar10.2  Total dollar10.2; 
    format DATE YYMMDD10. Price dollar10.2  Total dollar10.2; 
    if Product='Product B' then discount_total= TOTAL-(Total*0.1) ;
    else discount_total= TOTAL-(Total*0.2) ;
run;

/* Demo3*/
/* Experiment to use infile on Excel formatting file*/
data test3;
    infile '/home/u63372573/Importing/sales_data.xlsx'  DSD MISSOVER FIRSTOBS=2;
    length  ID $8 DATE $11   Product $9  Price 8 Quantity 8 Total 8;
 	input ID $ DATE $   Product $  Price Quantity Total ;  
    informat DATE mmddyy10. Price dollar10.2  Total dollar10.2; 
run;