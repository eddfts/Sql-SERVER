USE TSQLFundamentals2008;

SELECT orderid, custid,empid,orderdate
FROM Sales.Orders
WHERE orderdate = '20070212';


SELECT orderid, custid,empid,orderdate
FROM Sales.Orders
WHERE orderdate = CAST('20070212' AS DATETIME);

--LANGUAGE/DATEFORMAT
SET LANGUAGE British;
SELECT CAST('02/12/2007' AS datetime);

SET LANGUAGE us_english;
SELECT CAST('02/12/2007' AS datetime);

--CONVERT
--mm/dd/aaaa
SELECT CONVERT(datetime,'02/12/2007', 101);
--dd/mm/aaaa
SELECT CONVERT(datetime,'02/12/2007', 103);

--TRABALHANDO COM DATA E HORA SEPARADAMENTE 
--YEAR/MONTH
SELECT orderid
FROM Sales.Orders
WHERE YEAR(orderdate) = 2007;

SELECT orderid, custid, empid, orderdate
FROM Sales.Orders
WHERE orderdate >= '20070101' AND orderdate  < '20080101'

SELECT orderid, custid, empid, orderdate
FROM Sales.Orders
WHERE YEAR(orderdate)  = 2007 AND MONTH(orderdate) =2;

SELECT orderid, custid, empid, orderdate
FROM Sales.Orders
WHERE orderdate  >= '20070201' AND orderdate < '20070301';

--FUN��ES DE DATA E HORA
SELECT 
GETDATE() AS [GETDATE],
CURRENT_TIMESTAMP AS [CURRENT_TIMESTAMP],
GETUTCDATE() AS [GETUTCDATE],
SYSDATETIME() AS [SYSDATETIME],
SYSUTCDATETIME() AS [SYSUTCDATETIME],
SYSDATETIMEOFFSET() AS [SYSDATETIMEOFFSET]; 

SELECT 
CAST (SYSDATETIME() AS DATE) AS [DATA_ATUAL],
CAST (SYSDATETIME() AS TIME) AS [HORA_ATUAL];

SELECT CAST('20090212'as DATE);

SELECT CAST(SYSDATETIME() as DATE);


SELECT CAST(SYSDATETIME() as TIME);

SELECT  CONVERT(CHAR(8), CURRENT_TIMESTAMP, 112);

SELECT  CAST(CONVERT(CHAR(8), CURRENT_TIMESTAMP, 112) AS DATETIME);

SELECT  CONVERT(CHAR(12), CURRENT_TIMESTAMP, 114);

SELECT  CAST(CONVERT(CHAR(12), CURRENT_TIMESTAMP, 114) AS DATETIME);


