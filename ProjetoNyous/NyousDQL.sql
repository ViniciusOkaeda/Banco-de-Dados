SELECT * FROM Acesso;

SELECT * FROM Categoria;

SELECT * FROM Localizacao;

SELECT * FROM Usuario
INNER JOIN Acesso ON (Usuario.IdAcesso = Acesso.IdAcesso);

SELECT * FROM Evento
INNER JOIN Localizacao ON (Evento.IdLocalizacao = Localizacao.IdLocalizacao)
INNER JOIN Categoria ON (Evento.IdCategoria = Categoria.IdCategoria);

SELECT * FROM Convite
INNER JOIN Usuario ON (Convite.IdUsuarioEmissor = Usuario.IdUsuario) AND 
					  (Convite.IdUsuarioConvidado = Usuario.IdUsuario);



