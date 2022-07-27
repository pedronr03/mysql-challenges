SELECT U.user_name usuario, IF(MAX(YEAR(H.played_at)) = 2021, 'Usuário ativo', 'Usuário inativo') condicao_usuario
FROM user U
         JOIN history H ON U.user_id = H.user_id
GROUP BY U.user_name
ORDER BY U.user_name;