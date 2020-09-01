/*Na linha de comando abaixo irá acontecer a seleção da entidade(tabela) Pet
e irá acontecer um filtro para aparecer somente as informações do IdPet 1*/
SELECT * FROM Pet
WHERE IdPet = 1;

/*Na linha de comando abaixo irá acontecer a seleção da entidade(tabela) Pet
e irá acontecer um filtro ordenado para aparecer a lista de informações pelo NOMEPET 
em ordem alfabetica*/
SELECT * FROM Pet 
ORDER BY NOMEPET;

/*Na linha de comando abaixo irá acontecer a seleção da entidade(tabela) Pet.
Como em SQL existe a diferença entre caixa baixa (a) e caixa alta (A) o comando UPPER
é usado para eliminar essa diferença neste comando. Com isso existe um filtro feito com o uso de Like 'vi%'
essa busca vai aparecer filtrar tudo que começa com chi em NOMEPET */
SELECT * FROM Pet
WHERE UPPER(NOMEPET) LIKE 'chi%';

/*Na linha de comando abaixo irá acontecer a seleção da entidade(tabela) Pet
onde o filtro vai acontecer no atributo NOMEPET e o que vai ser buscado é o %Chi%, ou seja,
Todo nome que tiver Chi no início ou no meio irá aparecer nessa busca. Isso acontece pelo 
uso dos %%
%Chi = filtra tudo que tem Chi no meio
Chi% = filtra tudo que tem Chi no inicio*/
SELECT * FROM Pet
WHERE (NOMEPET) LIKE '%Chi%';