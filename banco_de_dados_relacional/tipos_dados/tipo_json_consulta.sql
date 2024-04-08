SELECT
    sumario_disciplinas
FROM aluno;

SELECT
    json_extract(sumario_disciplinas, "$.semestres[0].disciplinas[1].mediaFinal")
FROM aluno;

SELECT 
    * 
FROM aluno
WHERE json_contains
    (sumario_disciplinas, 
    '"nome": "Calculo I"', 
    "$.semestres[0].disciplinas"
    );