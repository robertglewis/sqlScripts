--- Reads CSV file into sql temp table 


create table #tempTableHut
(
  Column1 varchar(50),
  Column2 varchar(50),
  Column3 varchar(50),
)

--drop table #tempTableHut
--select * from #tempTableHut
--truncate table #tempTableHut


BULK INSERT #TempTableHut  
   FROM 'C:\Users\rlewis\Desktop\Symetra\data.csv'
   WITH 
      (
         FIELDTERMINATOR =',',
         ROWTERMINATOR ='\n',
         FIRSTROW = 2 
      )  
GO  


Select Column1 as 'Key', Column2 as 'data', Column3 as 'Comment' from #tempTableHut
