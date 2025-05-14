-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
SELECT  BillingCountry AS Pais,
SUM(Total) AS soma_compras,
MIN(Total) AS Compra_Minima,
MAX(Total) AS Compra_Maxima,
ROUND (AVG(Total), 2) AS Ticket_medio
FROM invoices 
WHERE BillingCountry = 'Brazil';