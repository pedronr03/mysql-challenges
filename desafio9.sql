SELECT COUNT(*) quantidade_musicas_no_historico FROM history H
JOIN user U ON H.user_id = U.user_id
WHERE U.user_name = 'Bill';