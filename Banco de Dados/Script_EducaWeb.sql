CREATE DATABASE EducaWeb;

USE EducaWeb; 

CREATE TABLE Usuario (
idUsuario INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(45) NOT NULL, 
email VARCHAR(45) NOT NULL, 
senha VARCHAR(45) NOT NULL
) AUTO_INCREMENT=100; 

CREATE TABLE Curso (
idCurso INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(45), 
nivel VARCHAR(45), 
CONSTRAINT chkNivel CHECK (nivel IN ("Básico", "Intermediário", "Avançado")), 
categoria VARCHAR(45), 
link VARCHAR(500), 
plataforma VARCHAR(45)
) AUTO_INCREMENT = 10 ; 

CREATE TABLE Inscricao (
idInscricao INT, 
fkUsuario INT, 
FOREIGN KEY (fkUsuario) REFERENCES Usuario (idUsuario), 
fkCurso INT, 
FOREIGN KEY (fkCurso) REFERENCES Curso (idCurso), 
PRIMARY KEY (fkUsuario, fkCurso), 
inscricaoCurso CHAR(3), 
CONSTRAINT chkInscricaoCurso CHECK(inscricaoCurso IN ("Sim", "Não")), 
conclusaoCurso CHAR(3), 
CONSTRAINT chkConclusaoCurso CHECK(conclusaoCurso IN ("Sim", "Não"))
); 

INSERT INTO Curso VALUES (default, "Tutorial de Redes de Computadores", "Básico", "TI",
 "https://www.udemy.com/share/101qJo3@9l84m5RGhVpAIsLbU_Lw4d1gkZ54ra3bfNWVnq-I__nKSNQU6nY-dersAQyaq5Vq9g==/", "Udemy"); 
INSERT INTO Curso VALUES (default, "Tutorial de C++", "Intermediário", "TI", 
 "https://www.udemy.com/share/101sqY3@d-1b0ZQKpIkJvPLbIb58t0Fq2nFwK5zPoGZGeHmXu8wcPGOn-aEvW4Yx7q94v1OX4Q==/", "Udemy");
INSERT INTO Curso VALUES (default, "Tutorial de Git para Iniciantes", "Básico", "TI", 
"https://www.udemy.com/share/101tY43@Rv8d71_Y7PU2YU3Ju81gy-XwDl17iGUVt1cFdCyEdpQh1E31s5ir28s-BGh3WK1FSQ==/", "Udemy"); 

INSERT INTO Curso VALUES (default, "Aprendendo a Aprender", "Básico", "Desenvolvimento Pessoal/Profissional", 
"https://www.coursera.org/learn/learning-how-to-learn", "Coursera"); 
INSERT INTO Curso VALUES (default, "Excel para Negócios", "Básico", "Desenvolvimento Pessoal/Profissional", 
"https://coursera.org/learn/excel-essentials-pt", "Coursera"); 
INSERT INTO Curso VALUES (default, "Pensamento Criativo", "Básico", "Desenvolvimento Pessoal/Profissional",
"https://www.coursera.org/learn/creative-thinking-techniques-and-tools-for-success", "Coursera");

INSERT INTO Curso VALUES (default, "Construindo minha Proteção Financeira", "Básico", "Finanças", 
"https://www.ev.org.br/cursos/Construindo-minha-Protecao-Financeira", "Fundação Bradesco");
INSERT INTO Curso VALUES (default, "Educação Financeira", "Básico", "Finanças", 
"https://www.ev.org.br/cursos/educacao-financeira", "Fundação Bradesco");
INSERT INTO Curso VALUES (default, "Análise de Balanços", "Avançado", "Finanças", 
"https://www.ev.org.br/cursos/Analise-de-Balanços", "Fundação Bradesco");

SELECT * FROM Curso;

SHOW TABLES;

DESCRIBE usuario;