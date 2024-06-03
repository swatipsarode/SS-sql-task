select * from mobile_specs

select * from company

select * from customer

------------------------------------------------------------------------------------------------------------------------------------------

Task 1 - join 3 tables

select *  from customer as cus
inner join mobile_specs as mob
on cus.ms_id = mob.ms_id
inner join company as com
on mob.ms_id = com.ms_id
order by cust_id

---Check below table to see the result

----------------------------------------------------------

Task 2 - Join table and use WHERE clause

---Problem statement-Using join function for table customer and mobile_specs where mobile_color = Gray

select * from customer as cus
inner join mobile_specs as mob
on cus.ms_id = mob.ms_id
where mobile_color = 'Gray'

---Check below table to see the result
-----------------------------------------------------------

Task 3 - Execute having,group by,order by together

--Problem statement-Show 'mobile_models' along with 'processor' whose range is more than 1000

select mobile_models,processor,price_$ from mobile_specs
group by mobile_models,processor,price_$
having price_$ > 1000
order by mobile_models

--Check below table to see the result

----------------------------------------------------------------------------------------------------------

Task 4 

join table and execute having and group by  function together

---Problem statement-show 'brand_name' that have mobile price_$ more than 1000

select brand_name, com.mobile_models, price_$ from company as com
inner join mobile_specs as mob
on com.ms_id = mob.ms_id
group by brand_name, com.mobile_models, price_$
having price_$ > 1000

---Check below table to see the result
------------------------------------------------------------------------------------------------------------

Task 5 window function (row_number)

Problem statement----calculate number of rows using distinct 'mobile_models'

select mobile_models,ROW_NUMBER () OVER (
PARTITION BY mobile_models
)
from mobile_specs

---Check below table to see the result


------------------------------------------------------------------------------------------------------------
WINDOW FUNCTION(RANK)
----Problem statement-Give Rank to distinct 'price_$' whose battery_mh is between 4000 AND 5000

select price_$,battery_mh ,RANK() OVER (
PARTITION BY mobile_models
order by battery_mh DESC) from mobile_specs
where battery_mh between 4000 AND 5000

----Check below table to see the result


----------------------------------------------------------------------------------------------------------
WINDOW FUNCTION (DENSE RANK)

----Problem statement-Give DENSE Rank to distinct 'price_$' whose battery_mh is between 4000 AND 5000

select price_$,battery_mh , DENSE_RANK() OVER (
PARTITION BY mobile_models
order by battery_mh DESC) from mobile_specs
where battery_mh between 4000 AND 5000

---Check below table to see the result

---------------------------------------------------------------------------------------------------------------
Task 6 on subquery

---Prbolem statement-- create table details of customer who's mobile storage_gb between 64 and 128

select * from customer where ms_id
in(select ms_id from mobile_specs where storage_gb between 64 and 128
 and price_$ > 500
)
order by city

------Check below table to see the result

------------------------------------------------------------------------------------------------------------

subquery with where clause

Problem statement--Give the distinct values of mobile_specs where price_$ > 600

select * from mobile_specs where ms_id in (select distinct ms_id from mobile_specs where price_$ > 600)
--Check below table to see the result
------------------------------------------------------------------------------------------------------------


subquery with from clause

----Problem statement-Give the rows where mobile_models = Samsung Ultra or ASUS Zenfone

select * from customer as cus
inner join (select * from mobile_specs where mobile_models = 'Samsung Ultra' OR mobile_models = 'ASUS Zenfone') as ms
on cus.ms_id = ms.ms_id

---Check below table to see the result

----------------------------------------------------------------------------------------------------------------

subquery order by

--Problem statement--Give the rows of 

select mob_id,manufacturing_country,(select brand_name from mobile_specs as ms where com.ms_id = ms.ms_id)
from company as com
order by mob_id

--Check below table to see the result
-----------------------------------------------------------------------------------------------------------
Task 7 

create table new_mob_specs as 
select ram , display_size_inches, storage_gb, battery_mh from mobile_specs

select * from new_mob_specs

-------------------------------------------------------------------------------------------------------------------------------------
To find unique values

select mobile_models , count (mobile_models) from mobile_specs group by mobile_models having count(mobile_models) = 1

------------------------------------------------------------------------------------------------------------------------------------------
Task on count

select distinct mobile_models from mobile_specs


select count (distinct mobile_models) from mobile_specs

select mobile_models , count (mobile_models) from mobile_specs group by mobile_models
