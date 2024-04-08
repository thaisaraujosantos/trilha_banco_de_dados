-- Criar novos personagens
SELECT * FROM personagem;

INSERT INTO personagem
    (id, nome)
VALUES
    (1000, 'Carlos'),
    (1001, 'Daniel'),
    (1002, 'Ana'),
    (1003, 'Maria'),
    (1004, 'Bia');

DELETE FROM personagem
WHERE id >= 1003;

DELETE FROM personagem
WHERE nome = 'Daniel';

DELETE FROM personagem
WHERE altura IS NULL;

-- Soft Delete - deleted_at (Date)

SELECT * FROM personagem
WHERE deleted_at IS NULL;

