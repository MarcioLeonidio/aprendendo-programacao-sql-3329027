-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT DISTINCT
Country AS Pais,
State AS estado_sigla,
CASE
  WHEN State = 'SP' THEN  'São Paulo'
  WHEN State = 'RJ' THEN  'Rio de Janeiro'
  --WHEN State = 'DF' THEN  'Distrito Federal'
ELSE 'Estado desconhecido'
END AS Estado
FROM customers
WHERE Country
LIKE  'Brazil';
