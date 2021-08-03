CREATE VIEW estatisticas_musicais AS
SELECT COUNT(C.cancao_id) 'cancoes',
COUNT(DISTINCT ALB.artista_id) 'artistas',
COUNT(DISTINCT ALB.album_id) 'albuns' 
FROM SpotifyClone.cancoes C
INNER JOIN SpotifyClone.albuns ALB
ON ALB.album_id = C.album_id;
