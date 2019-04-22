There are 11 tables in the chinook sample database:


 1. Employee table stores employees data such as employee id, last name, first name, etc. It also has a field named ReportsTo to specify who reports to whom.
 2. Customer table stores customers data.
 3. Invoice & InvoiceLine tables: these two tables store invoice data. The invoices table stores invoice header data and the InvoiceLine table stores the invoice line items data.
 4. Artist table stores artists data. It is a simple table that contains only artist id and name.
 5. Album table stores data about a list of tracks. Each album belongs to one artist. However, one artist may have multiple albums.
 6. MediaType table stores media types such as MPEG audio and AAC audio file.
 7. Genre table stores music types such as rock, jazz, metal, etc.
 8. Track table store the data of songs. Each track belongs to one album.
 9. Playlist & PlaylistTrack tables: Playlist table store data about playlists. Each playlist contains a list of tracks. Each track may belong to multiple playlists. The relationship between the playlists table and tracks table is many-to-many. The PlaylistTrack table is used to reflect this relationship.


![](https://blog.stefanproell.at/wp-content/uploads/2016/01/ER-1024x469.png)


