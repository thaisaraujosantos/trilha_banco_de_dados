SELECT
    id, nome
FROM
    aula
WHERE
    nome LIKE 'Módulo_';


SELECT
    id, nome
FROM
    aula
WHERE
    nome LIKE 'Módulo%';

SELECT
    id, nome
FROM
    aula
WHERE
    nome LIKE '%Módulo';

SELECT
    id, nome
FROM
    aula
WHERE
    nome LIKE '%Módulo%';