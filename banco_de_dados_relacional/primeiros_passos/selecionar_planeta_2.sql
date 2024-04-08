-- #01 -Selecionar planeta => nome, diametro
SELECT nome, raio * 2 as diametro FROM planeta;

-- #02 -Selecionar planeta => nome <> 'Tatooine'
SELECT nome FROM planeta WHERE nome <> 'Tatooine';

-- #03 -Selecionar planeta nao habitado
SELECT nome, habitado FROM planeta WHERE habitado = 0;
SELECT nome, habitado FROM planeta WHERE habitado = false;
SELECT nome, habitado FROM planeta WHERE !habitado;
SELECT nome, habitado FROM planeta WHERE NOT habitado;

-- #04 -Selecionar planeta habitado
SELECT nome, habitado FROM planeta WHERE habitado = 1;
SELECT nome, habitado FROM planeta WHERE habitado = true;
SELECT nome, habitado FROM planeta WHERE habitado;

-- #05 -Selecionar planeta => id par
SELECT nome, id FROM planeta WHERE id % 2 = 0;
SELECT nome, id FROM planeta WHERE NOT id % 2;

-- #06 -Selecionar planeta => id impar
SELECT nome, id FROM planeta WHERE id % 2 = 1;
SELECT nome, id FROM planeta WHERE id % 2;

