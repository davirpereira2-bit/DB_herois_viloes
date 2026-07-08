CREATE TABLE editoras (
ID SERIAL PRIMARY KEY ,
nome VARCHAR(50)NOT NULL UNIQUE 
);

CREATE TABLE personagens (
ID SERIAL PRIMARY KEY ,
nome_heroi VARCHAR(100) NOT NULL ,
nome_real VARCHAR (100),
alinhamento VARCHAR (50) NOT NULL  ,
ano_criacao INT ,
editora_id INT ,

CONSTRAINT fk_editora  FOREIGN KEY (editora_id) REFERENCES editoras(id)

) ; 

INSERT INTO personagens (nome_heroi , nome_real , alinhamento , ano_criacao , editora_id) VALUES 
('Homem de Ferro', 'Tony Stark', 'Herói', 1963, 1),
('Homem-Aranha', 'Peter Parker', 'Herói', 1962, 1),
('Thanos', 'Thanos', 'Vilão', 1973, 1),
('Deadpool', 'Wade Wilson', 'Anti-herói', 1991, 1),
('Batman', 'Bruce Wayne', 'Herói', 1939, 2),
('Superman', 'Clark Kent', 'Herói', 1938, 2),
('Coringa', 'Desconhecido', 'Vilão', 1940, 2),
('Arlequina', 'Harleen Quinzel', 'Anti-herói', 1992, 2);
