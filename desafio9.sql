DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
SELECT A.artista 'artista', ALB.album 'album' FROM SpotifyClone.artistas A
INNER JOIN SpotifyClone.albuns ALB
ON A.artista_id = ALB.artista_id
WHERE `artista` = nome_artista;
END $$
DELIMITER ;
