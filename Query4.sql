--total amount spent by customers only on artist name, Iron Maiden

select concat(c."FirstName",' ',c."LastName") as customer_name,sum(il."UnitPrice"* il."Quantity")
from "Invoice" as i
join "Customer" as c
on c."CustomerId"=i."CustomerId"
join "InvoiceLine" as il
on il."InvoiceId"=i."InvoiceId"
join "Track" as t
on t."TrackId"=il."TrackId"
join "Album" as al
on  al."AlbumId"=t."AlbumId"
join "Artist" as ar
on ar."ArtistId"=al."ArtistId" and ar."Name"='Iron Maiden'
group by 1
order by 2 desc
