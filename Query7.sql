--Differences in Genre preferences of USA, Canada, France, Brazil, Germany, UK 

select i."BillingCountry",g."Name", sum(il."UnitPrice"* il."Quantity")
from "Invoice" as i
join "InvoiceLine" as il
on i."InvoiceId"=il."InvoiceId"
join "Track" as t
on t."TrackId"=il."TrackId"
join "Genre" as g
on g."GenreId"=t."GenreId"
where i."BillingCountry" in
(
	select sub."BillingCountry"
    from(
         select "BillingCountry",sum("Total")
	     from "Invoice" as i
	     group by 1
	     order by 2 desc
	    ) as sub
    limit 6
)
group by 1,2
order by 1,3 desc
