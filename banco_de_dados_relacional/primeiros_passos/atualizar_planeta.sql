-- Corrigir com update para garantir que cada linha da tabela tenha IDs diferentes na sequência

SELECT * FROM planeta;

-- Tirar duplicidade
UPDATE planeta
SET id = 100
WHERE id = 600
LIMIT 1;

-- Ordenar na ordem crescente 1, 2, 3, 4, 5, 6
UPDATE planeta SET id = id / 100;
