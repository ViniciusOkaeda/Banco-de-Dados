-- DQL JOIN

/* O comando abaixo Seleciona as informações das tabelas 
DonoPet(atributo NOME) e TipoPet(atributo NOMETIPO) da tabela Pet,
após isso o comando INNER JOIN serve para fazer essas informações "entrarem" ou "ficarem
disponíveis Nos IdDonoPet e IdTipoPet que são FK da tabela Pet. Ou seja Os Atributos mencionados
Irão aparecer neste SELECT
*/
SELECT 
Estilo.NOME,
Album.NOME,
Album.AVALIACAO
FROM EstiloAlbum
	 INNER JOIN Estilo ON (EstiloAlbum.IdEstilo = Estilo.IdEstilo)
	 INNER JOIN Album ON (EstiloAlbum.IdAlbum = Album.IdAlbum);

	 SELECT 
Estilo.NOME,
Album.NOME,
Album.AVALIACAO
FROM EstiloAlbum
	 RIGHT JOIN Estilo ON (EstiloAlbum.IdEstilo = Estilo.IdEstilo)
	 RIGHT JOIN Album ON (EstiloAlbum.IdAlbum = Album.IdAlbum);

	 SELECT 
Estilo.NOME,
Album.NOME,
Album.AVALIACAO
FROM EstiloAlbum
	 LEFT JOIN Estilo ON (EstiloAlbum.IdEstilo = Estilo.IdEstilo)
	 LEFT JOIN Album ON (EstiloAlbum.IdAlbum = Album.IdAlbum);

