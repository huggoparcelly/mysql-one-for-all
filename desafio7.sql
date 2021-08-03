CREATE VIEW perfil_artistas AS 
SELECT A.artista 'artista', ALB.album 'album',
COUNT(USA.usuario_id) 'seguidores'
FROM SpotifyClone.artistas A 
INNER JOIN SpotifyClone.albuns ALB
ON ALB.artista_id = A.artista_id
INNER JOIN SpotifyClone.usuario_segue_artista USA
ON USA.artista_id = A.artista_id
GROUP BY ALB.album_id
ORDER BY `seguidores` DESC, `artista`, `album`;
