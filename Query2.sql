--Number of tracks per artist. Here consider artists whose all songs are completely rock

select sub1."Name", sub1.number_of_tracks
from (
      select sub."Name", sum(sub.rock_or_not),count(*) as number_of_tracks
      from (
	     select  ar."Name",case when t."GenreId"=1 then 0
                                       else 1
	                             end as rock_or_not
             from "Track" as t
             join "Album" as al
             on al."AlbumId"=t."AlbumId"
             join "Artist" as ar
             on ar."ArtistId"=al."ArtistId"
           ) as sub
     group by 1
     having sum(sub.rock_or_not)=0
     order by 3 desc, 1
     ) as sub1
