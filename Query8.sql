--We want to find the artists who have the most	diverse	customers. That	means, we like to find the	
--artist who have customers	from as	many different countries as	possible.	

select ar."Name" , count(distinct c."Country")
from "Invoice" as i
join "InvoiceLine" as il
on il."InvoiceId"=i."InvoiceId"
join "Customer" as c
on c."CustomerId"=i."CustomerId"
join "Track" as t
on t."TrackId"=il."TrackId"
join "Album" as al
on al."AlbumId"=t."AlbumId"
join "Artist" as ar
on ar."ArtistId"=al."ArtistId"
group by 1
order by 2 desc
