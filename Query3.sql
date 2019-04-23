select "BillingCountry", sum("Total")
from "Invoice"
group  by 1
order by 2 desc;
