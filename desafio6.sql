SELECT CAST(FORMAT(MIN(P.plan_value), 2) AS CHAR) faturamento_minimo,
       CAST(MAX(P.plan_value) AS CHAR)            faturamento_maximo,
       CAST(ROUND(AVG(P.plan_value), 2) AS CHAR)  faturamento_medio,
       CAST(ROUND(SUM(P.plan_value), 2) AS CHAR)  faturamento_total
FROM user U
         JOIN plan P ON P.plan_id = U.plan_id;