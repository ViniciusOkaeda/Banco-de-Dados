/*Dentro da entidade Estilo, irá ser atribuido o valor 'Sertanejo'
no atributo nome, sendo assim, o mesmo irá se encontrar no IdEstilo 1 */
INSERT INTO Estilo (NOME) VALUES ('Sertanejo');

/*Dentro da entidade Artista, irá ser atribuido o valor 'Marilia Mendonça'
no atributo nome, sendo assim, o mesmo irá se encontrar no IdArtista 1 */
INSERT INTO Artista (NOME) VALUES ('Marilia Mendonça');

/* O mesmo acontece na seguinte linha de comando, porém com mais atributos e atribuições
e todos citados abaixo irão ser armazenados no IdAlbum 1*/
INSERT INTO Album (NOME, TRABALHOS, MINUTOS, AVALIACAO) VALUES ('Arrocha', 'Turne America Latina', '130', '10');

/*Dentro da entidade EstiloAlbum, irá ser atribuido o valor 'Sertanejo Sofrido'
no atributo nome, sendo assim, o mesmo irá se encontrar no IdEstiloAlbum 1 */
INSERT INTO EstiloAlbum (IdEstilo, IdAlbum, NOME) VALUES (1, 1,'Sertanejo Sofrido');

/* O mesmo acontece na seguinte linha de comando, porém com mais atributos e atribuições
e todos citados abaixo irão ser armazenados no IdUsuario 1*/
INSERT INTO Usuario (NOME, SENHA, EMAIL, PERMISSAO) VALUES ('Vinicius', 'Viniao', 'viniciusokaeda@gmail.com', 'Concedida');

/*O comando abaixo é utilizado para deletar na Entidade EstiloAlbum as informações
armazenadas no IdEstiloAlbum 1*/
DELETE FROM EstiloAlbum WHERE IdEstiloAlbum = 1;

/*O comando abaixo atualiza dentro da entidade Usuario o atributo NOME no IdUsuario 1,
onde inicialmente o nome salvo era Vinicius e após a atualização irá ser Okaeda*/
UPDATE Usuario SET
NOME = 'Okaeda'
WHERE IdUsuario = 1;

-- Comando para visualização da tabela 
SELECT * FROM Estilo, Artista, Album, EstiloAlbum, Usuario;

INSERT INTO Usuario (NOME, SENHA, EMAIL, PERMISSAO) VALUES ('Albert', '', 'albert@gmail.com', 'Concedida');