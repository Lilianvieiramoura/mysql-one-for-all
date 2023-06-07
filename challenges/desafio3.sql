SELECT
    u.usuario_nome AS pessoa_usuaria,
    COUNT(hist.cancao_id) AS musicas_ouvidas,
    ROUND(SUM(c.duracao_segundos)/60, 2) AS total_minutos
FROM
    SpotifyClone.usuarios AS u
    LEFT JOIN SpotifyClone.historico_reproducoes AS hist
    ON u.usuario_id = hist.usuario_id
    LEFT JOIN SpotifyClone.cancoes AS c
    ON hist.cancao_id = c.cancao_id
GROUP BY
    u.usuario_nome
ORDER BY
    u.usuario_nome ASC;