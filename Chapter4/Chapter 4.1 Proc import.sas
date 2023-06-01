/* PROC IMPORT  */
/* Demo1 */
/* proc import statement */
PROC IMPORT 
DATAFILE='/home/u63372573/Importing/sales_data.csv'
OUT=mydata1
DBMS=CSV  ;
delimiter=',';
RUN;

/* Demo1*/
/* proc import statement with REPLACE,GETNAMES statement */
PROC IMPORT DATAFILE='/home/u63372573/Importing/sales_data.csv'
OUT=mydata1
DBMS=CSV 
REPLACE;
GETNAMES=YES; 
delimiter=',';
RUN;



/* Demo 2  */
/* Option to limit records */
option OBS=10;
PROC IMPORT DATAFILE='/home/u63372573/Importing/sales_data2.csv'
OUT=mydata2
DBMS=CSV 
REPLACE; 
GETNAMES=YES; 
GUESSINGROWS=200; 
DATAROW=2; 
RUN;

/*Sample Guessing Row =10*/
PROC IMPORT DATAFILE='/home/u63372573/Importing/sales_data2.csv'
OUT=mydata2
DBMS=CSV 
REPLACE; 
GETNAMES=YES; 
GUESSINGROWS=10; 
DATAROW=2; 
RUN;

/* Demo 3 */
/* Proc Import Excel file sales_data.xlsx */
PROC IMPORT 
DATAFILE='/home/u63372573/Importing/sales_data.xlsx'
OUT=mydata3 
DBMS=xlsx 
REPLACE; 
SHEET='Sheet1'; 
GETNAMES=YES; 
RUN;

