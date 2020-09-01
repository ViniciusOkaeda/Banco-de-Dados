-- DML

INSERT INTO Escola(Nome, Logradouro, Numero, Complemento, Bairro, Cep)
VALUES ('Escola Vinicius Okaeda', 'Avenida Barão de Limeira', 539, ' ', 'Santa Cecília', '01.202-001');

INSERT INTO Categoria (Tipo)
VALUES ('Critico'), ('Desejável'), ('Oculto') ;

INSERT INTO Curso (NomeCurso)
VALUES ('Desenvolvimento de Sistemas'), ('Multimídia');

INSERT INTO Objetivo (NomeObjetivo, Descricao, IdCategoria)
VALUES ('Diagrama Logico', 'Desenvolver um diagrama Lógico', 1);


INSERT INTO Professor(Nome, Cpf, Registro, Email, Senha, IdEscola)
VALUES ('Paulo Brandao', '104.123.456-78', '2318734', 'paulobrandao@gmail.com', 'paulo123', 1);

INSERT INTO Aluno (Nome, Cpf, Ra, DataNascim, Email, Senha, IdCurso)
VALUES ('Vinicius', '123456123-01', '9542513621', '1999-06-04T14:40:00', 'viniciusokaeda@gmail.com', 'vinicius123', 1), 
	   ('Bruno', '213456123-01', '9562513621', '2001-03-31T20:00:00', 'bruno@gmail.com', 'bruno123', 2), 
	   ('Georgia', '132456123-01', '2542513621', '2002-04-07T10:43:11' , 'georgia@gmail.com', 'georgia123', 1), 
	   ('Henrique', '423456123-01', '1542513621', '2003-09-29T19:00:00', 'henrique@gmail.com', 'henrique123', 1);

INSERT INTO Nota (Resultado, IdAluno, IdObjetivo)
VALUES (9, 1, 1),
	   (8.6, 2, 1),
	   (9.2, 3, 1),
	   (9.1, 4, 1);

INSERT INTO Post (Titulo, Conteudo, DataPost, Imagem, IdAluno, IdObjetivo)
VALUES ('Entrega de Diagrama', 'Finge q tem um diagrama aq', '2020-08-15T10:20:00', 'img.png', 1, 1),
	   ('Entrega de Diagrama', 'Finge q tem um diagrama aq', '2020-08-24T15:30:00', 'img.png', 2, 1),
	   ('Entrega de Diagrama', 'Finge q tem um diagrama aq', '2020-08-16T07:19:29', 'img.png', 3, 1),
	   ('Entrega de Diagrama', 'Finge q tem um diagrama aq', '2020-08-19T12:00:00', 'img.png', 4, 1);

INSERT INTO Turma (Identificacao, Periodo, IdCurso)
VALUES ('Turma A', 'Tarde', 1);



INSERT INTO AlunoTurma (IdTurma, IdAluno)
VALUES (1, 1),
	   (1, 2),
	   (1, 3),
	   (1, 4);

INSERT INTO ProfessorTurma (IdTurma, IdProfessor)
VALUES (1, 1);

INSERT INTO Dica(Titulo, Conteudo, Imagem, IdObjetivo, IdProfessor)
VALUES ('Trabalho em Grupo', 'Favor contribuir com os trabalhos em grupo', 'imagem.png', 1, 1);

INSERT INTO ObjetivoAluno (IdObjetivo, IdAluno)
VALUES (1, 1),
	   (1, 2),
	   (1, 3),
	   (1, 4);

/*O comando abaixo atualiza dentro da entidade Aluno o atributo Nome no IdAluno 3,
onde inicialmente o nome salvo era Georgia e após a atualização irá ser Georgia Souza*/
UPDATE Aluno SET
Nome = 'Georgia Souza'
WHERE IdAluno = 3;






