SELECT
    a.artista_nome AS artista,
    al.album_nome AS album
FROM
    SpotifyClone.artistas AS a
    INNER JOIN SpotifyClone.albuns AS al 
    ON a.artista_id = al.artista_id
WHERE
    a.artista_nome = 'Elis Regina'
ORDER BY
    album;