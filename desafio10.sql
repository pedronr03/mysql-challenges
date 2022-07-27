SELECT S.song_name nome, COUNT(H.song_id) reproducoes
FROM history H
         JOIN song S ON S.song_id = H.song_id
         JOIN `user` U ON H.user_id = U.user_id
WHERE U.plan_id = 2
   OR U.plan_id = 4
GROUP BY S.song_name
ORDER BY S.song_name;