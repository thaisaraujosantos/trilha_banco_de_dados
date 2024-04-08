-- Excluir todos os planetas com id ímpar

-- PARES
SELECT * FROM planeta WHERE id % 2 = 0;
SELECT * FROM planeta WHERE !(id % 2);
SELECT * FROM planeta WHERE NOT (id % 2);

--ÍMPARES
SELECT * FROM planeta WHERE id % 2 = 1;
SELECT * FROM planeta WHERE id % 2;

SELECT * FROM planeta;

DELETE FROM planeta
WHERE id % 2 = 1;