CREATE VIEW cancoes_premium AS
SELECT C.cancao 'nome', COUNT(C.cancao_id) 'reproducoes' FROM SpotifyClone.cancoes C
INNER JOIN SpotifyClone.usuario_historico UH
ON C.cancao_id = UH.cancao_id
INNER JOIN SpotifyClone.usuarios U
ON U.usuario_id = UH.usuario_id
INNER JOIN SpotifyClone.planos P
ON P.plano_id = U.plano_id
WHERE P.plano <> 'Gratuito'
GROUP BY C.cancao
ORDER BY `cancao`;
