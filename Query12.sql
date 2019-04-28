--- Which	playlists	do	not	contain	any	tracks	for	the	artists	“Black	Sabbath”	nor	“Chico	Buarque”	?
select p."PlaylistId", p."Name",pt."TrackId",t."Name",t."AlbumId",ar."Name"
from "Playlist" as p
join "PlaylistTrack" as pt
on p."PlaylistId"=pt."PlaylistId" 
join "Track" as t
on t."TrackId"=pt."TrackId"
join "Album" as al
on al."AlbumId"=t."AlbumId"
join "Artist" as ar
on ar."ArtistId" = al."ArtistId" and ar."Name"  not in ('Black Sabbath','Chico Buarque')
	    
      
  
		
       
     
