SELECT A1.artist_name artista, A2.album_title album, COUNT(F.user_id) seguidores
FROM artist A1
         JOIN album A2 ON A1.artist_id = A2.artist_id
         JOIN following F on A1.artist_id = F.artist_id
GROUP BY A2.album_title, A1.artist_name
ORDER BY seguidores DESC, A1.artist_name, A2.album_title;
