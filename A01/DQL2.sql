
/*Na linha de comando abaixo ir� acontecer a sele��o da entidade(tabela) Usuario
e ir� acontecer um filtro para aparecer somente as informa��es do IdUsuario 1*/
SELECT * FROM Usuario
WHERE IdUsuario = 1;

/*Na linha de comando abaixo ir� acontecer a sele��o da entidade(tabela) Usuario
e ir� acontecer um filtro ordenado para aparecer a lista de informa��es pelo nome 
em ordem alfabetica*/
SELECT * FROM Usuario 
ORDER BY NOME;

/*Na linha de comando abaixo ir� acontecer a sele��o da entidade(tabela) Usuario.
Como em SQL existe a diferen�a entre caixa baixa (a) e caixa alta (A) o comando UPPER
� usado para eliminar essa diferen�a neste comando. Com isso existe um filtro feito com o uso de Like 'vi%'
essa busca vai aparecer filtrar tudo que come�a com vi em nome */
SELECT * FROM Usuario
WHERE UPPER(NOME) LIKE 'vi%';

/*Na linha de comando abaixo ir� acontecer a sele��o da entidade(tabela) Usuario
onde o filtro vai acontecer no atributo NOME e o que vai ser buscado � o %Vi%, ou seja,
Todo nome que tiver Vi no in�cio ou no meio ir� aparecer nessa busca. Isso acontece pelo 
uso dos %%
%Vi = filtra tudo que tem Vi no meio
Vi% = filtra tudo que tem Vi no inicio*/
SELECT * FROM Usuario
WHERE (NOME) LIKE '%Vi%';



