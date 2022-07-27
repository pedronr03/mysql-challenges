SELECT U.user_name usuario, COUNT(H.song_id) qtde_musicas_ouvidas, ROUND(SUM(S.song_lenght) / 60, 2) total_minutos FROM user U
JOIN history H on U.user_id = H.user_id
JOIN song S on S.song_id = H.song_id
GROUP BY U.user_name
ORDER BY U.user_name;