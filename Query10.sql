--  Provide a query that shows the most purchased track of 2013

select t."Name", count(*)
from "Invoice" as i
join "InvoiceLine" as il 
on i."InvoiceId"=il."InvoiceId" and date_part('year',i."InvoiceDate")=2013
join "Track" as t
on t."TrackId"=il."TrackId"
group by 1
order by 2 desc;
