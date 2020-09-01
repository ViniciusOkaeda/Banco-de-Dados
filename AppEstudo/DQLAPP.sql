-- DQL 

SELECT * FROM Escola;

SELECT * FROM Categoria;

SELECT * FROM Curso;

SELECT * FROM Objetivo
INNER JOIN Categoria ON (Objetivo.IdCategoria = Categoria.IdCategoria);

SELECT * FROM Professor
INNER JOIN Escola ON (Professor.IdEscola = Escola.IdEscola);

SELECT * FROM Aluno
INNER JOIN Curso ON (Aluno.IdCurso = Curso.IdCurso);

SELECT * FROM Nota
INNER JOIN Aluno ON (Nota.IdAluno = Aluno.IdAluno)
INNER JOIN Objetivo ON (Nota.IdObjetivo = Objetivo.IdObjetivo);

SELECT * FROM Post
INNER JOIN Aluno ON (Post.IdAluno = Aluno.IdAluno)
INNER JOIN Objetivo ON (Post.IdObjetivo = Objetivo.IdObjetivo);

SELECT * FROM Turma
INNER JOIN Curso ON (Turma.IdCurso = Curso.IdCurso);

SELECT * FROM AlunoTurma
INNER JOIN Turma ON (AlunoTurma.IdTurma = Turma.IdTurma)
INNER JOIN Aluno ON (AlunoTurma.IdAluno = Aluno.IdAluno);

SELECT * FROM ProfessorTurma
INNER JOIN Turma ON (ProfessorTurma.IdTurma = Turma.IdTurma)
INNER JOIN Professor ON (ProfessorTurma.IdProfessor = Professor.IdProfessor);

SELECT * FROM Dica
INNER JOIN Professor ON (Dica.IdProfessor = Professor.IdProfessor)
INNER JOIN Objetivo ON (Dica.IdObjetivo = Objetivo.IdObjetivo);



--Mostrou a quantidade de objetivos alcançados por determinado aluno 
-- no select abaixo mostra os objetivos de todos alunos,
INNER JOIN Objetivo ON (ObjetivoAluno.IdObjetivo = Objetivo.IdObjetivo)
INNER JOIN Aluno ON (ObjetivoAluno.IdAluno = Aluno.IdAluno);

-- caso queira ser especifico usar WHERE Id.Aluno = ID 
SELECT * FROM ObjetivoAluno
INNER JOIN Objetivo ON (ObjetivoAluno.IdObjetivo = Objetivo.IdObjetivo)
INNER JOIN Aluno ON (ObjetivoAluno.IdAluno = Aluno.IdAluno)
WHERE ObjetivoAluno.IdAluno = 1;

--Converteu a data da entrega do objetivo para o formato (mm-dd-yyyy)
SELECT CONVERT (VARCHAR, DataPost, 1) FROM Post;


UPDATE Nota SET IdAluno = 1 WHERE IdNota = 2;

SELECT COUNT(*) AS Alcancados FROM Nota
	WHERE IdAluno = 1 AND Resultado IS NOT NULL;