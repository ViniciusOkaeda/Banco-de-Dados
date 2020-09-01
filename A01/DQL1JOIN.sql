/*DQL JOINS*/
USE ClinicaVeterinario;


/* O comando abaixo Seleciona as informações das tabelas 
DonoPet(atributo NOME) e TipoPet(atributo NOMETIPO) da tabela Pet,
após isso o comando INNER JOIN serve para fazer essas informações "entrarem" ou "ficarem
disponíveis Nos IdDonoPet e IdTipoPet que são FK da tabela Pet. Ou seja Os Atributos mencionados
Irão aparecer neste SELECT
*/
SELECT 
DonoPet.NOME,
TipoPet.NOMETIPO
FROM Pet
	 INNER JOIN DonoPet ON (Pet.IdDonoPet = DonoPet.IdDonoPet)
	 INNER JOIN TipoPet ON (Pet.IdTipoPet = TipoPet.IdTipoPet);

	 SELECT 
DonoPet.NOME,
TipoPet.NOMETIPO
FROM Pet
	 RIGHT JOIN DonoPet ON (Pet.IdDonoPet = DonoPet.IdDonoPet)
	 RIGHT JOIN TipoPet ON (Pet.IdTipoPet = TipoPet.IdTipoPet);

	 	 SELECT 
DonoPet.NOME,
TipoPet.NOMETIPO
FROM Pet
	 LEFT JOIN DonoPet ON (Pet.IdDonoPet = DonoPet.IdDonoPet)
	 LEFT JOIN TipoPet ON (Pet.IdTipoPet = TipoPet.IdTipoPet);






	SELECT * FROM Pet;
	SELECT * FROM TipoPet;
	SELECT * FROM DonoPet;
