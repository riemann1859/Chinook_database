--List those artists who have three or more songs that are 100000 ms or shorter in length. Your
--output columns should be listed as ArtistName and NumSongs in that order; note that you
--will need to alias the columns to achieve this.

select  ar."Name",count(*) as numsongs
from "Track" as t
join "Album" as al
on t."AlbumId"=al."AlbumId" and  t."Milliseconds"<=100000
join "Artist" as ar
on ar."ArtistId"=al."ArtistId"
group by 1
having count(*)>=3
order by 2 desc;
