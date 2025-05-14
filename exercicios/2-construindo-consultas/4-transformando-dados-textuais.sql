-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT 
CustomerId AS ID, 
FirstName AS Nome, 
LastName AS Sobrenome, 
Address AS Endereço
FROM customers
WHERE Country LIKE 'Bra%'; 

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT 
CustomerId AS ID, 
FirstName AS Nome, 
Upper (LastName) AS Sobrenome, 
Address AS Endereço
FROM customers
WHERE Country LIKE 'Bra%'; 

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT 
CustomerId AS ID, 
LOWER (FirstName) AS Nome, 
Upper (LastName) AS Sobrenome, 
Address AS Endereço
FROM customers
WHERE Country LIKE 'Bra%';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT 
CustomerId AS ID, 
LOWER (FirstName) AS Nome, 
Upper (LastName) AS Sobrenome,
FirstName || ' ' || LastName AS Nome_completo,
Address AS Endereço
FROM customers
WHERE Country LIKE 'Bra%';

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT 
CustomerId AS ID, 
LOWER (FirstName) AS Nome, 
Upper (LastName) AS Sobrenome,
FirstName || ' ' || LastName AS Nome_completo,
REPLACE (Address, 'Av.', 'Avenida') AS Endereço
FROM customers
WHERE Country LIKE 'Bra%';

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
