--  AULA 1
-- ATIVIDADE 3
CREATE DATABASE alura;

CREATE DATABASE teste;

DROP DATABASE teste;
-- ATIVIDADE 5
CREATE TABLE aluno
(
    id SERIAL,
    nome  VARCHAR(255),
    cpf CHAR(11),
    observacao TEXT,
    idade INTEGER,
    dinheiro NUMERIC(10,2),
    altura REAL,
    ativo BOOLEAN,
    data_nascimento DATE,
    hora_aula TIME,
    matriculado_em TIMESTAMP
);

SELECT * FROM aluno;

-- AULA 2
-- ATIVIDADE 1

INSERT INTO aluno(
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em) 
VALUES (
	'Diogo',
	'12345678901',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras finibus mollis justo in congue. Curabitur eget malesuada lorem, posuere varius ante. Mauris in est orci. Sed semper pretium velit vitae egestas. Donec finibus semper eleifend. Ut id velit ultricies, pellentesque purus nec, maximus risus. Nulla tristique tellus nec quam condimentum, sit amet convallis erat fermentum. Mauris in dictum dui. In et ante quam. Suspendisse tempor leo nec elementum mattis. Vestibulum rutrum quam risus, eu aliquam sem rhoncus eu.Vestibulum facilisis nunc at viverra luctus. Vestibulum quis tortor lacus. Sed at euismod mauris. Praesent sed neque risus. Donec sed cursus ligula. Nam cursus porttitor purus auctor consequat. In vitae turpis aliquet, euismod quam eu, finibus lacus. Curabitur volutpat tellus et pretium volutpat.',
	35,
	100.50,
	1.81,
	TRUE,
	'1984-08-27',
	'17:30:00',
	'2020-02-08 12:32:45'
);

 SELECT * FROM aluno;

-- ATIVIDADE 3
  SELECT * 
   FROM aluno
  WHERE ID = 1;

 UPDATE aluno
 SET nome = 'Nico',
	cpf = '10987654321',
	observacao ='Teste',
	idade = 38,
	dinheiro = 15.32,
	altura = 1.90,
	ativo = FALSE,
	data_nascimento = '1980-01-15',
	hora_aula = '13:00:00',
	matriculado_em = '2020-01-02 15:00:00'
  WHERE id = 1;
  
  
 SELECT *  FROM aluno ;

-- ATIVIDADE 5
 SELECT * 
   FROM aluno
  WHERE nome = 'Nico';

DELETE 
   FROM aluno
  WHERE nome = 'Nico';


-- AULA 3
-- ATIVIDADE 1
INSERT INTO aluno(
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em) 
VALUES (
	'Diogo',
	'12345678901',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras finibus mollis justo in congue. Curabitur eget malesuada lorem, posuere varius ante. Mauris in est orci. Sed semper pretium velit vitae egestas. Donec finibus semper eleifend. Ut id velit ultricies, pellentesque purus nec, maximus risus. Nulla tristique tellus nec quam condimentum, sit amet convallis erat fermentum. Mauris in dictum dui. In et ante quam. Suspendisse tempor leo nec elementum mattis. Vestibulum rutrum quam risus, eu aliquam sem rhoncus eu.Vestibulum facilisis nunc at viverra luctus. Vestibulum quis tortor lacus. Sed at euismod mauris. Praesent sed neque risus. Donec sed cursus ligula. Nam cursus porttitor purus auctor consequat. In vitae turpis aliquet, euismod quam eu, finibus lacus. Curabitur volutpat tellus et pretium volutpat.',
	35,
	100.50,
	1.81,
	TRUE,
	'1984-08-27',
	'17:30:00',
	'2020-02-08 12:32:45'
);

SELECT * 
   FROM aluno;

   SELECT nome 
  FROM aluno;
  
 SELECT nome,
 		idade
  FROM aluno;
   
 SELECT nome,
 		idade,
		matriculado_em
  FROM aluno;
  
 SELECT nome,
 		idade,
		matriculado_em as quando_se_matriculou
  FROM aluno;
  
 SELECT nome as "Nome do Aluno",
 		idade,
		matriculado_em as quando_se_matriculou
  FROM aluno;  
  
 SELECT nome as Nome do Aluno,
 		idade,
		matriculado_em as quando_se_matriculou
  FROM aluno;
  
 SELECT nome as "Nome do Aluno",
 		idade,
		matriculado_em as quando_se_matriculou
  FROM aluno; 

  -- ATIVIDADE 3

INSERT INTO aluno (nome) VALUES('Vinicius Dias');
INSERT INTO aluno (nome) VALUES('Nico Steppat');
INSERT INTO aluno (nome) VALUES('João Roberto');
INSERT INTO aluno (nome) VALUES('Diego');

SELECT *
  FROM aluno; 
  
SELECT *
  FROM aluno
 WHERE nome= 'Diogo';
 
SELECT *
  FROM aluno
 WHERE nome <> 'Diogo';
 
SELECT *
  FROM aluno
 WHERE nome != 'Diogo';
 
SELECT *
  FROM aluno
 WHERE nome LIKE '_iogo';
 
SELECT *
  FROM aluno
 WHERE nome LIKE 'Di_go';
 
SELECT *
  FROM aluno
 WHERE nome NOT LIKE 'Di_go';
 
SELECT *
  FROM aluno
 WHERE nome LIKE 'D%';
 
SELECT *
  FROM aluno
 WHERE nome LIKE '%s';
 
 SELECT *
  FROM aluno
 WHERE nome LIKE '% %';
 
SELECT *
  FROM aluno
 WHERE nome LIKE '%i%a%';

 SELECT * FROM aluno WHERE idade != 36

 SELECT * FROM aluno WHERE idade < 36

 SELECT * FROM aluno WHERE idade BETWEEN 10 AND 36

 SELECT * FROM aluno WHERE ativo = true
 
 SELECT * FROM aluno WHERE ativo IS NULL

 -- ATIVIDADE 7
 -- WHERE antende sempre a mesma linha, e não linhas separadas;
SELECT * FROM ALUNO WHERE nome LIKE 'D%' AND cpf IS NOT NULL; --Adiciona condição E ao filtro

SELECT * FROM ALUNO WHERE nome LIKE 'Diogo' OR nome LIKE 'Rodrigo' OR nome LIKE 'Nico%'; --Adiciona condição OU ao filtro


-- AULA 4
-- ATIVIDADE 1
DROP TABLE curso;
CREATE TABLE curso ( -- UNIQUE, não permite que tenha dados duplicados
	id INTEGER PRIMARY KEY, -- PRIMARY KEY, não pode ser nula e deve ser única!
	nome VARCHAR(255) NOT NULL -- NOT NULL, não permite que valores nulos sejam inseridos na tabela
);

INSERT INTO curso (id, nome) VALUES (NULL, NULL);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');

SELECT * FROM curso;

-- ATIVIDADE 3
DROP TABLE aluno;

CREATE TABLE aluno (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO aluno (nome) VALUES ('Diogo');
INSERT INTO aluno (nome) VALUES ('Vinícius');

SELECT * FROM aluno;
SELECT * FROM curso;

DROP TABLE aluno_curso;
CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	
	FOREIGN KEY (aluno_id) -- PONTE ENTRE DADOS DA TABELA NOVA E ANTIGA (ponte entre inverntário e loja)
		REFERENCES aluno (id),

	FOREIGN KEY (curso_id)
		REFERENCES curso (id)
);


INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1); -- ALUNO INEXISTENTE
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,3);

SELECT * FROM aluno WHERE id = 1;
SELECT * FROM curso WHERE id = 1;

SELECT * FROM aluno WHERE id = 2;
SELECT * FROM curso WHERE id = 1;

SELECT * FROM aluno WHERE id = 3;
SELECT * FROM curso WHERE id = 1;

-- AULA 5
-- JOIN
SELECT * FROM aluno;
SELECT * FROM curso;

SELECT aluno.nome as aluno,
		curso.nome as curso
	FROM aluno 
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id 
	JOIN curso ON curso.id = aluno_curso.curso_id

	INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2, 2);

	INSERT INTO aluno (nome) VALUES ('Nico');

	INSERT INTO curso (id, nome) VALUES (3, 'CSS');

-- LEFT JOIN - Prioriza as informações contidas na tabela da esquerda (aluno_curso);
SELECT aluno.nome as aluno,
		curso.nome as curso
	FROM aluno 
LEFT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id 
LEFT JOIN curso ON curso.id = aluno_curso.curso_id

-- RIGHT JOIN - Prioriza as informações contidas na tabela da direita (curso);
SELECT aluno.nome as aluno,
		curso.nome as curso
	FROM aluno 
RIGHT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id 
RIGHT JOIN curso ON curso.id = aluno_curso.curso_id

-- FULL JOIN - Prioriza as informações contidas em ambas as tabelas (aluno_curso, curso);
SELECT aluno.nome as aluno,
		curso.nome as curso
	FROM aluno 
FULL JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id 
FULL JOIN curso ON curso.id = aluno_curso.curso_id

-- CROSS JOIN - Multiplica dados da tabela A pela tabela B;
SELECT aluno.nome as aluno,
		curso.nome as curso
	FROM aluno 
CROSS JOIN curso

-- DELETE CASCADE;

SELECT * FROM aluno;
SELECT * FROM curso;
SELECT * FROM aluno_curso;

DELETE FROM aluno WHERE id = 1;

DROP TABLE aluno_curso;
CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	
	FOREIGN KEY (aluno_id) -- PONTE ENTRE DADOS DA TABELA NOVA E ANTIGA (ponte entre inverntário e loja)
		REFERENCES aluno (id)
		ON DELETE CASCADE, -- Permite deletar dados de mais de uma tagbela de uma vez;

	FOREIGN KEY (curso_id)
		REFERENCES curso (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,3);

SELECT * FROM aluno_curso;

SELECT aluno.nome as "Nome do Aluno",
		curso.nome as "Nome do Curso"
	FROM aluno 
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id 
	JOIN curso ON curso.id = aluno_curso.curso_id

-- UPDATE CASCADE

UPDATE aluno SET id = 10 WHERE id = 2;

DROP TABLE aluno_curso;
CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	
	FOREIGN KEY (aluno_id) -- PONTE ENTRE DADOS DA TABELA NOVA E ANTIGA (ponte entre inverntário e loja)
		REFERENCES aluno (id)
		ON DELETE CASCADE -- Permite deletar dados de mais de uma tagbela de uma vez;
		ON UPDATE CASCADE, -- Permite fazer update de dados de mais de uma tagbela de uma vez;

	FOREIGN KEY (curso_id)
		REFERENCES curso (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);

SELECT  aluno.id AS aluno_id,
		aluno.nome as "Nome do Aluno",
		curso.id AS curso_id,
		curso.nome as "Nome do Curso"
	FROM aluno 
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id 
	JOIN curso ON curso.id = aluno_curso.curso_id

-- ORDENAÇÃO DE CONSULTAS

CREATE TABLE funcionarios (
	id SERIAL PRIMARY KEY,
	matricula VARCHAR(10),
	nome VARCHAR(255),
	sobrenome VARCHAR(255)
);

INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M001', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M002', 'Vinícius', 'Dias');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M003', 'Nico', 'Steppat');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M004', 'João', 'Roberto');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M005', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M006', 'Alberto', 'Martins');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M007', 'Diogo', 'Oliveira');

SELECT * FROM funcionarios;

-- ORDER BY Orderna por (em ordem crecente);
SELECT * FROM funcionarios ORDER BY nome;
-- ORDER BY Orderna por (em ordem decrecente);
SELECT * FROM funcionarios ORDER BY nome DESC;
-- Ordena por nome e matricula;
SELECT * FROM funcionarios ORDER BY nome, matricula DESC;
-- Ordena por nome, sobrenome e matrícula;
SELECT * FROM funcionarios ORDER BY 3,4,2;
SELECT * FROM funcionarios ORDER BY 4 DESC, nome DESC, 2 ASC; --ASC significa ascendente, por padrão não precisa ser colocado;
SELECT * FROM funcionarios ORDER BY 4 DESC, funcionarios.nome DESC, 2 ASC;


-- LIMITANDO CONSULTAS
SELECT * FROM funcionarios LIMIT 5; -- LIMIT limita até o determinado número;
SELECT * FROM funcionarios ORDER BY nome LIMIT 5;
-- OFFSET - Pula registro 1 e anda do 2 pra frente (começa a partir do número especificado);
SELECT * FROM funcionarios ORDER BY id LIMIT 5 OFFSET 1;


-- AGREGAÇÃO
-- COUNT - Retorna a quantidade de registros
-- SUM -   Retorna a soma dos registros
-- MAX -   Retorna o maior valor dos registros
-- MIN -   Retorna o menor valor dos registros
-- AVG -   Retorna a média dos registros

SELECT COUNT (id),
       SUM(id),
       MAX(id),
       MIN(id),
       ROUND(AVG(id),0)
  FROM funcionarios;


-- AGRUPAMENTOS
SELECT DISTINCT -- DISTINCT - Não permite repetição de dados; 
        nome
  FROM funcionarios
  ORDER BY nome;

SELECT
       nome,
       sobrenome,
       COUNT(*)
  FROM funcionarios
  GROUP BY nome, sobrenome
  ORDER BY nome;

SELECT curso.nome,
        COUNT(aluno.id)
    FROM aluno
    JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
    JOIN curso ON curso.id = aluno_curso.curso_id
    GROUP BY 1
    ORDER BY 1

-- FILTRO AGRUPAMENTO

SELECT curso.nome,
		COUNT(aluno.id)
    FROM curso
    LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
    LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
	-- WHERE curso.nome = 'Javascript'
GROUP BY 1
	HAVING COUNT(aluno.id) > 0


SELECT nome,
		COUNT(id)
	FROM funcionarios
	GROUP BY nome
	HAVING COUNT(id) = 1;

















 