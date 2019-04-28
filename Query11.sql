--- Which	playlists	have	no	Latin	tracks?

select sub."PlaylistId", sub."Name", sum(sub.latin_or_not)
from (
       select p."PlaylistId", p."Name",  
             case when g."Name"='Latin' then 1
	        else 0
	     end as latin_or_not
       from "Playlist" as p
       join "PlaylistTrack" as pt
       on p."PlaylistId"=pt."PlaylistId"
       join "Track" as t
       on t."TrackId"=pt."TrackId"
       join "Genre" as g
       on g."GenreId"=t."GenreId" 
     ) as sub
group by 1,2
having sum(sub.latin_or_not)=0
