--List artists who have five or more albums that are at least 2500000 ms long (i.e., the total of
--all the tracks on the album is at least 2500000 ms). Your output columns should be listed
--as ArtistName and NumAlbums in that order


select ar."Name",count(sub."AlbumId") as num_albums 
from (
	    
      select "AlbumId", sum("Milliseconds") as album_length
      from "Track"
      group by 1
      having sum("Milliseconds") >2500000
      order by 2 desc
      
     ) as sub
join "Album" as al
on al."AlbumId"=sub."AlbumId"
join "Artist" as ar
on ar."ArtistId"=al."ArtistId"
group by 1
order by 2 desc;
