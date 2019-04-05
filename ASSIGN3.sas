data temp;
set SASHELP.HEART;
if AgeatDeath = . then m = 0; else m=1; 
proc sql;
select * from temp;
quit;

data assignment;
set SASHELP.HEART; 

proc sql;
select sex,
sum (AgeatDeath gt 60)/count(*)*100 as percentage
from assignment
group by sex;
quit;

proc sql;
select weight/height as BMI from assignment
where calculated BMI > 2;
quit;
PROC SQL;
         CREATE TABLE WANT AS
         SELECT 
			*, 
			sum(KEYVAR='Y') AS COUNT_VAR
         FROM HAVE
         GROUP BY PARTICIPANT;
QUIT;
