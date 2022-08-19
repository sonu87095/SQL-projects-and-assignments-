select * from audi;
select * from bmw;
select * from hyndai;
select * from merc;
select * from cclass;
select * from transmission;

select distinct year from merc order by year ;
--a.  Create an analysis to find income class of UK citizens based on price of Cars(You can use per-capita income in UK from internet sources)
select distinct year from audi order by  year desc ;
 
 select avg(price) as audi_avg_price from audi;
  select avg(price) bmw_avg_price from  bmw;
  select avg(price) as merc_avg_price from merc; 
  select avg(price) as hyundai_avg_price from hyndai;
  select avg(price) as cclass_avg from cclass;

 -- b. Categorize the cars on the basis of their price(Create as many buckets as you want as per your understanding of 
--data) and analyze the:
--a. price changes across the years and identify the categories which has seen significant jump in its price
--ANALYSIS FOR AUDI 
SELECT  DISTINCT YEAR FROM audi ORDER BY YEAR DESC ;
SELECT * FROM audi WHERE YEAR BETWEEN 2019 AND 2020;
 SELECT *, SUM(PRICE) OVER( PARTITION BY YEAR) FROM audi WHERE YEAR BETWEEN 2019 AND 2020 ; 
  