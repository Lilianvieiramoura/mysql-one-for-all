SELECT COUNT(*) AS musicas_no_historico
FROM SpotifyClone.historico_reproducoes AS hist
INNER JOIN SpotifyClone.usuarios AS u
ON hist.usuario_id = u.usuario_id
WHERE u.usuario_nome = 'Barbara Liskov';