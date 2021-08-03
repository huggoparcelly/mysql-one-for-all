CREATE VIEW top_2_hits_do_momento AS
SELECT C.cancao 'cancao', COUNT(UH.cancao_id) 'reproducoes'
FROM SpotifyClone.cancoes C
INNER JOIN SpotifyClone.usuario_historico UH
ON C.cancao_id = UH.cancao_id
GROUP BY cancao
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
