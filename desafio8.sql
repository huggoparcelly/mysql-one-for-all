DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.usuario_historico
WHERE SpotifyClone.usuario_historico.usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.usuario_segue_artista
WHERE SpotifyClone.usuario_segue_artista.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;