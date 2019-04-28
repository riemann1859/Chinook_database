-- What are the  total sales for each of year? 
select  date_part('year', "InvoiceDate") as year, sum("Total") as total_sales
from "Invoice"
group by 1,
order by 1
      
  
		
       
     
