SELECT artists.Name, albums.Title FROM artists
    JOIN albums
    ON Artists.id = Albums.artistsid_id
    WHERE Title = "NULL"