-- Comandos DQL - Data Query Language
-- SELECT
-- SINTAXE:
--   SELECT <COLUNAS QUE VOCÊ QUER EXIBIR AO USUÁRIO> FROM <NOME TABELA>
-- Exibir todos os Tipos de pokemons existentes
SELECT Id, Name, Color FROM Types;
SELECT * FROM Types;
SELECT NUMBER, NAME FROM Pokemons;

-- Exibir todos os campos dos pokemons ordenados por Número
-- ORDER BY Campo <ASC, DESC>, ordem crescente é o padrão
SELECT NUMBER, NAME FROM Pokemons ORDER BY NUMBER;

-- Exibir todos os campos dos pokemos ordenador por peso, do mais pesado para o leve
SELECT * FROM Pokemons ORDER BY Weight DESC;

-- Filtrar os dados - WHERE campo numérico
SELECT * FROM Types WHERE id = 7;
SELECT * FROM Types WHERE id > 7;
SELECT * FROM Types WHERE id < 7;
SELECT * FROM Types WHERE id >= 7;
SELECT * FROM Types WHERE id <= 7;
SELECT * FROM Types WHERE id <> 7;   --  !=  também funciona

/* Exibir os Pokemons com Altura igual ou maior a 1.5 */
SELECT * FROM Pokemons WHERE Height >= 1.5 ORDER BY Height;

/* Exibir os Pokemons com Peso menor que 10 */
SELECT * FROM Pokemons WHERE Weight < 10 ORDER BY Weight;

/* Exibir os Pokemons com Altura igual ou maior a 1.5 e Peso menor que 10 */
SELECT * FROM Pokemons WHERE Height >= 1.5 AND Weight < 10;

/* Exibir os Tipos com Id = 10 e 17 */
SELECT * FROM Types WHERE Id = 10 OR Id = 17;

/* Exibir os Tipos onde o Id não for 7 */
SELECT * FROM Types WHERE NOT Id = 7;

-- Filtrar os dados - WHERE campo texto -> USAR O LIKE
/* Nome = Elétrico */
SELECT * FROM Types WHERE Name = 'Eletrico';
SELECT * FROM Types WHERE Name LIKE 'Eletrico';

/* % ao Final de um texto, pesquisar todos os valores daquele campo que comecem o texto informado */
SELECT * FROM Types WHERE Name LIKE 'F%';

-- % no ínicio de um texto
SELECT * FROM Types WHERE Name LIKE '%a';

-- % no meio de um texto
SELECT * FROM Types WHERE Name LIKE '%an%';

-- Filtrando por Gênero
-- Exibir pokemons que podem ser encontrados em ambos os gêneros
-- GenderId 3 -> Masculino e Feminino
SELECT p.Number AS 'Nº', p.Name AS 'Nome', p.Weight AS 'Peso' FROM Pokemons p
 WHERE GenderId = 3;

-- GenderId 1 -> Masculino
SELECT p.Number AS 'Nº', p.Name AS 'Nome', p.Weight AS 'Peso' FROM Pokemons p
 WHERE GenderId = 1;

-- GenderId 2 -> Feminino
SELECT p.Number AS 'Nº', p.Name AS 'Nome', p.Weight AS 'Peso' FROM Pokemons p
 WHERE GenderId = 2;

-- GenderId 4 -> Desconhecido
SELECT p.Number AS 'Nº', p.Name AS 'Nome', p.Weight AS 'Peso' FROM Pokemons p
 WHERE GenderId = 4;
