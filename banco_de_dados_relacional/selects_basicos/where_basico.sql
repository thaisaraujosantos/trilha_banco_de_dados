SELECT 
    id, nome, duracao
FROM    
    aula
WHERE 
    duracao <= 60 AND duracao <> 0; 
    -- <> é igual a != (diferente)

SELECT
    id, nome, gratis, duracao
FROM
    aula
WHERE
    gratis  = 1 
    AND duracao >= 1200;

SELECT
    id, nome, duracao, gratis 
FROM
    curso
WHERE
    duracao >= 144000
    AND NOT gratis;