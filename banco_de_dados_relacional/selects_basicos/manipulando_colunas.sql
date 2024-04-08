-- projeção 

SELECT * FROM curso;

SELECT nome, id FROM curso;

SELECT duracao AS 'Duração (Segundos)' FROM curso;

SELECT
    duracao duracaoEmSegundos,
    id codigo,
    nome curso
FROM curso;