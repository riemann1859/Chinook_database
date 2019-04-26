--For a given email provider, find the number of customers with this provider.
select  UPPER(split_part(split_part("Email",'@',2),'.',1)) AS mail_service, count(*) as number_of_customers
from "Customer"
group by 1
order by 2 desc
