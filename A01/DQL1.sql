/*Na linha de comando abaixo ir� acontecer a sele��o da entidade(tabela) Pet
e ir� acontecer um filtro para aparecer somente as informa��es do IdPet 1*/
SELECT * FROM Pet
WHERE IdPet = 1;

/*Na linha de comando abaixo ir� acontecer a sele��o da entidade(tabela) Pet
e ir� acontecer um filtro ordenado para aparecer a lista de informa��es pelo NOMEPET 
em ordem alfabetica*/
SELECT * FROM Pet 
ORDER BY NOMEPET;

/*Na linha de comando abaixo ir� acontecer a sele��o da entidade(tabela) Pet.
Como em SQL existe a diferen�a entre caixa baixa (a) e caixa alta (A) o comando UPPER
� usado para eliminar essa diferen�a neste comando. Com isso existe um filtro feito com o uso de Like 'vi%'
essa busca vai aparecer filtrar tudo que come�a com chi em NOMEPET */
SELECT * FROM Pet
WHERE UPPER(NOMEPET) LIKE 'chi%';

/*Na linha de comando abaixo ir� acontecer a sele��o da entidade(tabela) Pet
onde o filtro vai acontecer no atributo NOMEPET e o que vai ser buscado � o %Chi%, ou seja,
Todo nome que tiver Chi no in�cio ou no meio ir� aparecer nessa busca. Isso acontece pelo 
uso dos %%
%Chi = filtra tudo que tem Chi no meio
Chi% = filtra tudo que tem Chi no inicio*/
SELECT * FROM Pet
WHERE (NOMEPET) LIKE '%Chi%';