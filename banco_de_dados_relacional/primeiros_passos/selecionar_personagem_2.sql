-- Selecionar tudo da tabela personagem
SELECT * FROM personagem;

-- Selecionar nome e id da tabela personagem
SELECT nome, id FROM personagem;

-- Selecionar nome e id da tabela personagem com id = 1
SELECT nome, id FROM personagem WHERE id = 5;

--Importante! Também considera espaços na busca.
SELECT nome, altura FROM personagem WHERE nome = 'Chewbacca';

--BINARY faz distinção de letras maiúsculas e minúsculas
SELECT nome, altura FROM personagem WHERE BINARY nome = 'chewbacca';

-- Altura x 2, nome da coluna = 'dobro'
SELECT altura * 2 as dobro FROM personagem;

--Selects com WHERE (retorna sempre T or F)

-- 0 = false, 1 = true
SELECT * FROM personagem WHERE 0;
SELECT * FROM personagem WHERE 1;
SELECT * FROM personagem WHERE true;
SELECT * FROM personagem WHERE false;
-- todos os números retornam T com exceção do 0 (é sempre F)
SELECT * FROM personagem WHERE -20;
-- retorno de expressões T e F
SELECT * FROM personagem WHERE 1 = 1;
SELECT * FROM personagem WHERE 10 < 8;
SELECT * FROM personagem WHERE 10 - 8;