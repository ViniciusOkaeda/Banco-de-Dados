/*Dentro da entidade DonoPet, ir� ser atribuido o valor 'Ronald�o'
no atributo NOME, sendo assim, o mesmo ir� ser armazenado no IdDonoPet 1 */
INSERT INTO DonoPet(NOME) VALUES ('Ronald�o');

/* O mesmo acontece na seguinte linha de comando, por�m com mais atributos e atribui��es
e todos citados abaixo ir�o ser armazenados no IdClinicaVet 1*/
INSERT INTO ClinicaVet(NOMECLINICA, ENDERECO) VALUES ('Pet Feliz', 'Rua das dores');

/* O mesmo acontece na seguinte linha de comando, por�m com mais atributos e atribui��es
e todos citados abaixo ir�o ser armazenados no IdVeterinario 1*/
INSERT INTO Veterin(NOMEVET, CRN, IdClinicaVet) VALUES ('Joana', '293531', 1);

/*Dentro da entidade TipoPet, ir� ser atribuido o valor 'Cachorro'
no atributo NOMETIPO, sendo assim, o mesmo ir� ser armazenado no IdTipoPet 1 */
INSERT INTO TipoPet(NOMETIPO) VALUES ('Cachorro');

/* O mesmo acontece na seguinte linha de comando, por�m com mais atributos e atribui��es
e todos citados abaixo ir�o ser armazenados no IdPet 1*/
INSERT INTO Pet(NOMEPET, NASCIMENTO, IdTipoPet, IdDonoPet) VALUES ('Chic�o', 2020-05-01, 1, 1);

/*Dentro da entidade Avaliar, ir� ser atribuido o valor 'Foi otimo'
no atributo Avaliacao, sendo assim, o mesmo ir� ser armazenado no IdAvaliar 1 */
INSERT INTO Avaliar(Avaliacao) VALUES ('Foi otimo');

/* O mesmo acontece na seguinte linha de comando, por�m com mais atributos e atribui��es
e todos citados abaixo ir�o ser armazenados no IdAtendimento 1*/
INSERT INTO Atendimento (SERVICO, VALOR, IdPet, IdTipoPet, DATASERVICO, IdAvaliar) VALUES ('Banho', 100.00, 1, 1, 2020-06-20, 1);

-- Comando para visualiza��o da entidade em forma de tabela 
SELECT * FROM Atendimento;

/*O comando abaixo � utilizado para deletar na entidade Avaliar as informa��es
armazenadas no IdAvaliar 1*/
DELETE FROM Avaliar WHERE IdAvaliar = 1;


/*O comando abaixo atualiza dentro da entidade Pet o atributo NOMEPET no IdPet 1,
onde inicialmente o nome salvo era Chicao e ap�s a atualiza��o ir� ser Lulu*/
UPDATE Pet SET
NOMEPET = 'Lulu'
WHERE IdPet = 1;