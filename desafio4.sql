CREATE VIEW top_3_artistas AS
SELECT A.artista 'artista', COUNT(USA.usuario_id) 'seguidores'
FROM SpotifyClone.artistas A
INNER JOIN SpotifyClone.usuario_segue_artista USA
ON USA.artista_id = A.artista_id
GROUP BY USA.artista_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
