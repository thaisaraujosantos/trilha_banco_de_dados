SELECT * FROM personagem;

-- Atualizar o nome no id informado
UPDATE personagem SET nome = 'Luke Skywalker' WHERE id = 1;

UPDATE personagem SET nome = 'Leia Organa' WHERE id = 6;

-- Atualizar no primeiro registro encontrado (LIMIT 1);
UPDATE personagem 
SET 
    nome = 'Lider Supremo Snoke',
    destaque = 1,
    altura = 2.3
WHERE id = 100 LIMIT 1;

UPDATE personagem SET id = 100 WHERE id = 5 LIMIT 1;


