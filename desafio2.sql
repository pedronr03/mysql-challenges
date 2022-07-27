-- SELECT COUNT(DISTINCT S.song_id) cancoes, COUNT(DISTINCT A1.album_id), COUNT(DISTINCT A2.artist_id)
-- FROM song S
-- JOIN album A1 ON A1.album_id = S.album_id
-- JOIN artist A2 on A2.artist_id = A1.artist_id;

SELECT COUNT(DISTINCT S.song_id) cancoes, COUNT(DISTINCT A1.album_id) albuns, COUNT(DISTINCT A2.artist_id) artistas
FROM song S, album A1, artist A2;