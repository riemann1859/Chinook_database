--Total amount spent in USD for each Artist.
select ar."Name",sum(il."UnitPrice"* il."Quantity") as total_expenditure
from  "InvoiceLine" as il
join "Track" as t
on t."TrackId"=il."TrackId"
join "Album" as al
on al."AlbumId"=t."AlbumId"
join "Artist" as ar
on ar."ArtistId"=al."AlbumId"
group by 1
order by 2 desc;
