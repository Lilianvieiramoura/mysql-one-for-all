SELECT
    a.artista_nome AS artista,
    al.album_nome AS album,
    COUNT(seg.artista_id) AS pessoas_seguidoras
FROM
    SpotifyClone.artistas AS a
    INNER JOIN SpotifyClone.albuns AS al
    ON a.artista_id = al.artista_id
    INNER JOIN SpotifyClone.seguindo AS seg
    ON a.artista_id = seg.artista_id
GROUP BY
    a.artista_id,
    al.album_id
ORDER BY
    pessoas_seguidoras DESC,
    artista,
    album;