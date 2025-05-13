--DROP TABLE salario_classe;
CREATE TABLE salario_classe (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nivel varchar(50),
salario INTEGER
);
-- não fi possível excluir uma coluna, então recriei a tabela com ua nova. excluindo a antiga.

ALTER TABLE employees
ADD id_salario INTEGER;