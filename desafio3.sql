CREATE VIEW historico_reproducao_usuarios AS
SELECT U.nome 'usuario', C.cancao 'nome'
FROM SpotifyClone.usuarios U
INNER JOIN SpotifyClone.usuario_historico UH
ON U.usuario_id = UH.usuario_id
INNER JOIN SpotifyClone.cancoes C
ON C.cancao_id = UH.cancao_id
ORDER BY `usuario`, `nome`;
