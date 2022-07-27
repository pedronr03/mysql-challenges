SELECT A1.artist_name artista, A2.album_title album
FROM artist A1
         JOIN album A2 ON A1.artist_id = A2.artist_id
WHERE A1.artist_name = 'Walter Phoenix'
GROUP BY A2.album_title, A1.artist_name
ORDER BY A2.album_title;
