/*Dentro da entidade DonoPet, irá ser atribuido o valor 'Ronaldão'
no atributo NOME, sendo assim, o mesmo irá ser armazenado no IdDonoPet 1 */
INSERT INTO DonoPet(NOME) VALUES ('Ronaldão');

/* O mesmo acontece na seguinte linha de comando, porém com mais atributos e atribuições
e todos citados abaixo irão ser armazenados no IdClinicaVet 1*/
INSERT INTO ClinicaVet(NOMECLINICA, ENDERECO) VALUES ('Pet Feliz', 'Rua das dores');

/* O mesmo acontece na seguinte linha de comando, porém com mais atributos e atribuições
e todos citados abaixo irão ser armazenados no IdVeterinario 1*/
INSERT INTO Veterin(NOMEVET, CRN, IdClinicaVet) VALUES ('Joana', '293531', 1);

/*Dentro da entidade TipoPet, irá ser atribuido o valor 'Cachorro'
no atributo NOMETIPO, sendo assim, o mesmo irá ser armazenado no IdTipoPet 1 */
INSERT INTO TipoPet(NOMETIPO) VALUES ('Cachorro');

/* O mesmo acontece na seguinte linha de comando, porém com mais atributos e atribuições
e todos citados abaixo irão ser armazenados no IdPet 1*/
INSERT INTO Pet(NOMEPET, NASCIMENTO, IdTipoPet, IdDonoPet) VALUES ('Chicão', 2020-05-01, 1, 1);

/*Dentro da entidade Avaliar, irá ser atribuido o valor 'Foi otimo'
no atributo Avaliacao, sendo assim, o mesmo irá ser armazenado no IdAvaliar 1 */
INSERT INTO Avaliar(Avaliacao) VALUES ('Foi otimo');

/* O mesmo acontece na seguinte linha de comando, porém com mais atributos e atribuições
e todos citados abaixo irão ser armazenados no IdAtendimento 1*/
INSERT INTO Atendimento (SERVICO, VALOR, IdPet, IdTipoPet, DATASERVICO, IdAvaliar) VALUES ('Banho', 100.00, 1, 1, 2020-06-20, 1);

-- Comando para visualização da entidade em forma de tabela 
SELECT * FROM Atendimento;

/*O comando abaixo é utilizado para deletar na entidade Avaliar as informações
armazenadas no IdAvaliar 1*/
DELETE FROM Avaliar WHERE IdAvaliar = 1;


/*O comando abaixo atualiza dentro da entidade Pet o atributo NOMEPET no IdPet 1,
onde inicialmente o nome salvo era Chicao e após a atualização irá ser Lulu*/
UPDATE Pet SET
NOMEPET = 'Lulu'
WHERE IdPet = 1;