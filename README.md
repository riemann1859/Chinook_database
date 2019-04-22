
![](C:/Users/YUNUS/Desktop/ChinookDatabaseSchema.png)

There are 11 tables in the chinook sample database.


 employees table stores employees data such as employee id, last name, first name, etc. It also has a field named ReportsTo to specify who reports to whom.
 customers table stores customers data.
 invoices & invoice_items tables: these two tables store invoice data. The invoices table stores invoice header data and the invoice_items table stores the invoice line items data.
 artists table stores artists data. It is a simple table that contains only artist id and name.
 albums table stores data about a list of tracks. Each album belongs to one artist. However, one artist may have multiple albums.
 media_types table stores media types such as MPEG audio and AAC audio file.
 genres table stores music types such as rock, jazz, metal, etc.
 tracks table store the data of songs. Each track belongs to one album.
 playlists & playlist_track tables: playlists table store data about playlists. Each playlist contains a list of tracks. Each track may belong to multiple playlists. The relationship between the playlists table and tracks table is many-to-many. The playlist_track table is used to reflect this relationship.
