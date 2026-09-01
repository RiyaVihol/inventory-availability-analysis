USE Order_Managament_System;

Select * from  oms;

Select Count(Order_ID) from oms;

/*Which products went out of stock most often? */ 
Select Product_Name , Count(Availability_Status) 
from oms 
where  Availability_Status = "Out of Stock" 
group by Product_Name;


/* Which stores have data errors, and how many errors does each store have? */
Select Store_ID , Count(Data_Error) 
from oms
where Data_Error = "Yes"
group by Store_ID;


/* Which stores have non-completed orders? */
Select  Store_ID , Count(Order_Status) 
from oms
where Order_Status not in ("Completed")
group by Store_ID ; 

/*Which stores have inventory discrepancies, and what is the total discrepancy for each store? */
SELECT Store_ID, SUM(System_Stock - Actual_Stock) AS Total_Discrepancy
FROM oms
GROUP BY Store_ID;


/*“What is the total quantity ordered for each product?”*/
Select  Product_Name , sum(Quantity_Ordered) 
from oms
group by Product_Name;

/* What is the total quantity of products ordered by each store? */
Select Store_ID, sum(Quantity_Ordered) as QTY
from oms
group by Store_ID 
Order by QTY Desc ; 
