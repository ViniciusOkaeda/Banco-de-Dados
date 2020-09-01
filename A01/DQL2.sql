
/*Na linha de comando abaixo irá acontecer a seleção da entidade(tabela) Usuario
e irá acontecer um filtro para aparecer somente as informações do IdUsuario 1*/
SELECT * FROM Usuario
WHERE IdUsuario = 1;

/*Na linha de comando abaixo irá acontecer a seleção da entidade(tabela) Usuario
e irá acontecer um filtro ordenado para aparecer a lista de informações pelo nome 
em ordem alfabetica*/
SELECT * FROM Usuario 
ORDER BY NOME;

/*Na linha de comando abaixo irá acontecer a seleção da entidade(tabela) Usuario.
Como em SQL existe a diferença entre caixa baixa (a) e caixa alta (A) o comando UPPER
é usado para eliminar essa diferença neste comando. Com isso existe um filtro feito com o uso de Like 'vi%'
essa busca vai aparecer filtrar tudo que começa com vi em nome */
SELECT * FROM Usuario
WHERE UPPER(NOME) LIKE 'vi%';

/*Na linha de comando abaixo irá acontecer a seleção da entidade(tabela) Usuario
onde o filtro vai acontecer no atributo NOME e o que vai ser buscado é o %Vi%, ou seja,
Todo nome que tiver Vi no início ou no meio irá aparecer nessa busca. Isso acontece pelo 
uso dos %%
%Vi = filtra tudo que tem Vi no meio
Vi% = filtra tudo que tem Vi no inicio*/
SELECT * FROM Usuario
WHERE (NOME) LIKE '%Vi%';



