DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(input_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qnt_musica_historico INT;
SELECT COUNT(cancao_id) FROM SpotifyClone.usuario_historico
WHERE usuario_id = input_id
INTO qnt_musica_historico;
RETURN qnt_musica_historico;
END $$
DELIMITER ;
