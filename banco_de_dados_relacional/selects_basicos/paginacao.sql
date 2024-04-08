SELECT
    id, nome, data_publicacao
FROM
    aula
LIMIT 
    10
OFFSET 
    20;

SELECT
    id, nome, data_publicacao
FROM
    aula
LIMIT 
    10, 20; -- offset, limit