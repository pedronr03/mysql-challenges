SELECT S.song_name cancao, COUNT(H.song_id) reproducoes
FROM song S
         JOIN history H on S.song_id = H.song_id
GROUP BY S.song_name
ORDER BY reproducoes DESC, S.song_name
LIMIT 2;