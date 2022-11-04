
Select Number_A,
Shared_by,
AStatus,
DTM,
SSNO,
R_Status,
Act_Perform,
Response_DATE,
Response,
Remarks from (
(Select * from Table1 )A 
left join 
( Select *from [ServerIP].DB.schema.Table2 )B
on A.Number_A =B.Number_A
) where  A.Number_A in ('92' + right(  //*Number*//    ,10) ) 
order by DTM desc



SELECT SUM(M_Mins) AS 'MINS',
SUM(AMOUNT) AS 'AMOUT',
T_DIRECTION,
t_type,
S_zone, 
MONTH(DTM) AS 'MONTH'
FROM [schema].[table]
WHERE [dtm] is between '2021-01-01'  and '2021-08-01' 
AND     YEAR(DTM) = '2021' 
GROUP BY  MONTH(DTM),T_DIRECTION, t_type, S_zone

