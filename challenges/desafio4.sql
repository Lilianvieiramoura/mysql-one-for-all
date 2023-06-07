SELECT 
	u.usuario_nome AS pessoa_usuaria,
    IF (MAX(hist.data_reproducao) > '2021-01-01', 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM
    SpotifyClone.usuarios AS u
    LEFT JOIN SpotifyClone.historico_reproducoes AS hist
    ON u.usuario_id = hist.usuario_id
GROUP BY
    u.usuario_id
ORDER BY
    u.usuario_nome;