/*Dentro da entidade Estilo, ir� ser atribuido o valor 'Sertanejo'
no atributo nome, sendo assim, o mesmo ir� se encontrar no IdEstilo 1 */
INSERT INTO Estilo (NOME) VALUES ('Sertanejo');

/*Dentro da entidade Artista, ir� ser atribuido o valor 'Marilia Mendon�a'
no atributo nome, sendo assim, o mesmo ir� se encontrar no IdArtista 1 */
INSERT INTO Artista (NOME) VALUES ('Marilia Mendon�a');

/* O mesmo acontece na seguinte linha de comando, por�m com mais atributos e atribui��es
e todos citados abaixo ir�o ser armazenados no IdAlbum 1*/
INSERT INTO Album (NOME, TRABALHOS, MINUTOS, AVALIACAO) VALUES ('Arrocha', 'Turne America Latina', '130', '10');

/*Dentro da entidade EstiloAlbum, ir� ser atribuido o valor 'Sertanejo Sofrido'
no atributo nome, sendo assim, o mesmo ir� se encontrar no IdEstiloAlbum 1 */
INSERT INTO EstiloAlbum (IdEstilo, IdAlbum, NOME) VALUES (1, 1,'Sertanejo Sofrido');

/* O mesmo acontece na seguinte linha de comando, por�m com mais atributos e atribui��es
e todos citados abaixo ir�o ser armazenados no IdUsuario 1*/
INSERT INTO Usuario (NOME, SENHA, EMAIL, PERMISSAO) VALUES ('Vinicius', 'Viniao', 'viniciusokaeda@gmail.com', 'Concedida');

/*O comando abaixo � utilizado para deletar na Entidade EstiloAlbum as informa��es
armazenadas no IdEstiloAlbum 1*/
DELETE FROM EstiloAlbum WHERE IdEstiloAlbum = 1;

/*O comando abaixo atualiza dentro da entidade Usuario o atributo NOME no IdUsuario 1,
onde inicialmente o nome salvo era Vinicius e ap�s a atualiza��o ir� ser Okaeda*/
UPDATE Usuario SET
NOME = 'Okaeda'
WHERE IdUsuario = 1;

-- Comando para visualiza��o da tabela 
SELECT * FROM Estilo, Artista, Album, EstiloAlbum, Usuario;

INSERT INTO Usuario (NOME, SENHA, EMAIL, PERMISSAO) VALUES ('Albert', '', 'albert@gmail.com', 'Concedida');