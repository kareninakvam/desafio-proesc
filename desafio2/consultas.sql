-- Comando para saber quantos produtos existem em cada categoria.
SELECT c.name AS category_name, COUNT(p.id) AS product_count 
FROM categories c
JOIN products p ON c.id = p.category_id
GROUP BY c.name;

-- Comando para saber a média de preços em cada categoria.
SELECT c.name AS category_name, AVG(p.price) AS avg_price
FROM categories c
JOIN products p ON c.id = p.category_id
GROUP BY c.name;

-- Comando para atualizar todos os produtos da categoria Cremes e Geleias para a categoria Frutas.
UPDATE products SET category_id = (SELECT id FROM categories WHERE name = 'Frutas')
WHERE category_id = (SELECT id FROM categories WHERE name = 'Cremes e Geleias');
