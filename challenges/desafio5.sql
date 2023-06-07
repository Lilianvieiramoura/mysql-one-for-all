SELECT
    c.cancao_nome AS cancao,
    COUNT(hist.usuario_id) AS reproducoes
FROM
    SpotifyClone.cancoes AS c
    INNER JOIN SpotifyClone.historico_reproducoes AS hist
    ON c.cancao_id = hist.cancao_id
GROUP BY
    c.cancao_id, c.cancao_nome
ORDER BY
    reproducoes DESC, cancao ASC
LIMIT 2;