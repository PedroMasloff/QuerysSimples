/* Modelagem Básica - 

ENTIDADE=TABELA
CAMPOS = ATRIBUTOS */

CLIENTE

NOME - CARACTER(30)
CPF - NUMERICO(11)
EMAIL - CARACTER(30)
TELEFONE - CARACTER(30)
ENDERECO - CARACTER(100)
SEXO - CARACTER(1)

/* PROCESSOS DE MODELAGEM  */

/* FASE 01 E FASE 02 - AD ADM DE DADOS */

MODELAGEM CONCEITUAL - RASCUNHO
MODELAGEM LÓGICA - QUALQUER PROGRAMA DE MODELAGEM

/* FASE 03 - DBA / AD */

MODELAGEM FÍSICA - SCRIPTS DE BANCO

/* INICIANDO A MODELAGEM FÍSICA */

/* CRIANDO O BANCO DE DADOS */

CREATE DATABASE EXEMPLO

CREATE DATABASE PROJETO;

/* CONECTANDO-SE AO BANCO */

USE PROJETO;

/* CRIANDO A TABELA DE CLIENTES */

CREATE TABLE CLIENTE(
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100)

);

/* VERIFICANDO AS TABELAS DO BANCO */

SHOW TABLES;

USE EXEMPLO;
SHOW TABLES;

USE PROJETO;

/* DESCOBRINDO COMO É A ESTRUTURA DE UMA TABELA */

DESC CLIENTE;

-----


varchar(10)
char(10)

/*  Inserindo dados e valores nulos */

use projeto;

/* Mostrando as tabelas */
show tables

/* exibindo a estrutura de uma tabela */
desc cliente;

/* sintaxe basica de inserção - INSERT INTO TABELA... */

/* FORMA 01 - OMITINDO AS COLUNAS */

INSERT INTO CLIENTE VALUES('JOAO','M','JOAO@GMAIL.COM',988638273,'22923110','MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES('CELIA','F','CELIA@GMAIL.COM',541521456,'25078869','RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES('JORGE','M',NULL,885755896,'58748895','OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');

/* FORMA 02 - COLOCANDO AS COLUNAS */

INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('LILIAN','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','947785696',887774856);

/* FORMA 03 - INSERT COMPACTO - SOMENTE MYSQL */

INSERT INTO CLIENTE VALUES('ANA','F','ANA@GLOBO.COM',85548962,'548556985','PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP'),
                          ('CARLA','F','CARLA@TERATI.COM.BR',7745828,'66587458','SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');
						  
INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('CLARA','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','883665843',99999999999);

INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('CLARA','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','883665843',22222222222);
						  
/* O COMANDO SELECT 
selecao projecao e juncao
*/

SELECT NOW() as DATA_HORA, 'FELIPE MAFRA' AS PROFESSOR;

SELECT 'FELIPE MAFRA';

SELECT 'BANCO DE DADOS';

/* ALIAS DE COLUNAS */


SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE;

SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;

SELECT   EMAIL, SEXO, ENDERECO, NOME FROM CLIENTE;

SELECT   EMAIL, SEXO, ENDERECO, NOME, NOW() AS DATA_HORA FROM CLIENTE;

/* APENAS PARA FINS ACADEMICOS */

SELECT * FROM CLIENTE;

/*TABELA ERRADA - NAO DIGITE DIRETAMENTE NO BANCO */
CREATE TABLE CLIENTE(
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30)
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100),

);

SELECT * FROM CLIENTE;


/* FILTRANDO DADOS COM WHERE E LIKE */

SELECT NOME, TELEFONE FROM CLIENTE;

/* FILTRANDO */

SELECT NOME, SEXO FROM CLIENTE
WHERE SEXO = 'M';

SELECT NOME, ENDERECO FROM CLIENTE
WHERE SEXO = 'F';

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO = 'RJ';

/* UTILIZANDO O LIKE */

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE 'RJ';

/* CARACTER CORINGA % -> QUALQUER COISA */

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE 'OSCAR CURY%';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%CENTRO%';

/* Resolvendo o exercício */

CREATE DATABASE LIVRARIA;

USE LIVRARIA;

CREATE TABLE LIVROS(
	LIVRO VARCHAR(100),
	AUTOR VARCHAR(100),
	SEXO CHAR(1),
	PAGINAS INT(5),
	EDITORA VARCHAR(30),
	VALOR FLOAT(10,2),
	UF CHAR(2),
	ANO INT(4)
);

/* VERIFICANDO OS BANCOS */
SHOW DATABASES;

/* CONEVCTANDO A UM BANCO */
USE LIVRARIA;


INSERT INTO LIVROS VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009);
INSERT INTO LIVROS VALUES('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018);
INSERT INTO LIVROS VALUES('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008);
INSERT INTO LIVROS VALUES('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78,'RJ',2018);
INSERT INTO LIVROS VALUES('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150,'RJ',2019);
INSERT INTO LIVROS VALUES('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016);
INSERT INTO LIVROS VALUES('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015);
INSERT INTO LIVROS VALUES('Pra sempre amigas','Leda Silva','F',510,'Insignia',78,'ES',2011);
INSERT INTO LIVROS VALUES('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130,'RS',2018);
INSERT INTO LIVROS VALUES('O poder da mente','Clara Mafra','F',120,'Continental',56,'SP',2017);

/*1 – Trazer todos os dados.*/
select * from livros;

/*2 – Trazer o nome do livro e o nome da editora*/
SELECT LIVRO, EDITORA
FROM LIVROS;

/*3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.*/
SELECT LIVRO, UF
FROM LIVROS
WHERE SEXO = 'M';

SELECT AUTOR, SEXO,LIVRO, UF
FROM LIVROS
WHERE SEXO = 'M';

/*4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.*/

SELECT LIVRO, PAGINAS
FROM LIVROS
WHERE SEXO = 'F';

SELECT AUTOR,  LIVRO, PAGINAS
FROM LIVROS
WHERE SEXO = 'F';


/*5 – Trazer os valores dos livros das editoras de São Paulo.*/

SELECT LIVRO, VALOR
FROM LIVROS
WHERE UF = 'SP';

SELECT UF, LIVRO, VALOR
FROM LIVROS
WHERE UF = 'SP';

/*6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).*/

SELECT AUTOR, SEXO, UF
FROM LIVROS
WHERE SEXO = 'M'
AND UF = 'SP'
OR UF = 'RJ';

SELECT AUTOR, SEXO, UF
FROM LIVROS
WHERE 
SEXO = 'M' AND (UF = 'SP' OR UF = 'RJ');

SELECT AUTOR, SEXO, UF
FROM LIVROS
WHERE SEXO = 'M'
AND UF = 'SP'
AND paginas > 100;

/* OPERADORES LÓGICOS 
OR -> PARA QUE A SAIDA DA QUERY SEJA VERDADEIRA, BASTA QUE APENAS UMA CONDICAO SEJA VERDADEIRA.
AND -> PARA QUE A SAIDA SEJA VERDADEIRA TODAS AS CONDICOES PRECISAM SER VERDADEIRAS.
*/

/* OR - OU */

SHOW DATABASES;

USE PROJETO;

SELECT * FROM CLIENTE;

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE 
SEXO = 'M' OR ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE 
SEXO = 'M' AND ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO  FROM CLIENTE
WHERE
SEXO = 'F' OR ENDERECO LIKE '%ESTACIO';

/* AND - E */

SELECT NOME, SEXO, ENDERECO  FROM CLIENTE
WHERE 
SEXO = 'M' AND ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE
SEXO = 'F' AND ENDERECO LIKE '%ESTACIO';

/* COUNT(*), GROUP BY, PERFORMANCE COM OPERADORES
LOGICOS */

/* CONTANDO OS REGISTROS DE UMA TABELA */

SELECT COUNT(*) AS "Quantidade de Registros da Tab. Cliente"
 FROM CLIENTE;

/* OPERADOR GROUP BY */

SELECT SEXO, COUNT(*)
FROM CLIENTE;

SELECT * FROM CLIENTE;

SELECT SEXO, COUNT(*) 
FROM CLIENTE
GROUP BY SEXO;

/* PERFORMANCE EM OPERADORES LOGICOS */

/* 1 MILHAO DE REGISTROS

PARA CONTAR
SELECT COUNT(*) FROM CLIENTE;

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;

SELECT CIDADE, COUNT(*) FROM CLIENTE
GROUP BY CIDADE;

CONDICAO
SEXO = F
CIDADE = RIO DE JANEIRO

SITUACAO - TRATANDO COM OU / OR
70% MULHERES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE SEXO = 'F'
OR CIDADE = 'RIO DE JANEIRO';

SITUACAO - TRATANDO COM E / AND
70% MULHERES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE CIDADE = 'RIO DE JANEIRO'
AND SEXO = 'F';

SELECT COUNT(*) FROM FUNCIONARIOS;

-- 21 | Filmes   53 | Roupas


select * from funcionarios
where departamento = 'Roupas'
or
departamento = 'Filmes';

SELECT COUNT(*), departamento
FROM FUNCIONARIOS
group by departamento;

SELECT COUNT(*), departamento
FROM FUNCIONARIOS
group by departamento
order by 1;

WHERE DEPARTAMENTO = 'Filmes' OR DEPARTAMENTO = 'Roupas'

--Feminino 491 ocorrencias
select count(*), sexo
from funcionarios
group by sexo;

--52 | Lar  21 Filmes
select count(*), departamento
from funcionarios
group by departamento;

SELECT * FROM FUNCIONARIOS
WHERE
( DEPARTAMENTO = 'Lar' AND SEXO = 'Feminino' )
OR
( DEPARTAMENTO = 'Filmes' AND SEXO = 'Feminino' );

--Traga os funcionarios do sexo masculino
--ou os funcionarios que trabalhem no setor Jardim

SELECT * FROM FUNCIONARIOS
WHERE
SEXO = 'Masculino' OR
DEPARTAMENTO = 'Jardim';

create database exercicio;

use exercicio;

create table funcionarios
  (
      idFuncionario integer,
      nome varchar(100),
      email varchar(200),
      sexo varchar(10),
      departamento varchar(100),
      admissao varchar(10),
      salario integer,
      cargo varchar(100),
      idRegiao int
  );

insert into funcionarios values (1,'Kelley','rkelley0@soundcloud.com','Feminino','Computadores','10/2/2009',67470,'Structural Engineer',2);
insert into funcionarios values (2,'Armstrong','sarmstrong1@infoseek.co.jp','Masculino','Esporte','3/31/2008',71869,'Financial Advisor',2);
insert into funcionarios values (3,'Carr','fcarr2@woothemes.com','Masculino','Automotivo','7/12/2009',101768,'Recruiting Manager',3);
insert into funcionarios values (4,'Murray','jmurray3@gov.uk','Feminino','Joalheria','12/25/2014',96897,'Desktop Support Technician',3);
insert into funcionarios values (5,'Ellis','jellis4@sciencedirect.com','Feminino','Alimentícios','9/19/2002',63702,'Software Engineer III',7);
insert into funcionarios values (6,'Phillips','bphillips5@time.com','Masculino','Ferramentas','8/21/2013',118497,'Executive Secretary',1);
insert into funcionarios values (7,'Williamson','rwilliamson6@ted.com','Masculino','Computadores','5/14/2006',65889,'Dental Hygienist',6);
insert into funcionarios values (8,'Harris','aharris7@ucoz.com','Feminino','Brinquedos','8/12/2003',84427,'Safety Technician I',4);
insert into funcionarios values (9,'James','rjames8@prnewswire.com','Masculino','Joalheria','9/7/2005',108657,'Sales Associate',2);

insert into funcionarios values (11,'Jacobs','jjacobsa@sbwire.com','Feminino','Joalheria','11/27/2003',121966,'Community Outreach Specialist',7);
insert into funcionarios values (12,'Black','mblackb@edublogs.org','Masculino','Roupas','2/4/2003',44179,'Data Coordiator',7);
insert into funcionarios values (13,'Schmidt','sschmidtc@state.gov','Masculino','Bebês','10/13/2002',85227,'Compensation Analyst',3);
insert into funcionarios values (14,'Webb','awebbd@baidu.com','Feminino','Computadores','10/22/2006',59763,'Software Test Engineer III',4);
insert into funcionarios values (15,'Jacobs','ajacobse@google.it','Feminino','Games','3/4/2007',141139,'Community Outreach Specialist',7);
insert into funcionarios values (16,'Medina','smedinaf@amazonaws.com','Feminino','Bebês','3/14/2008',106659,'Web Developer III',1);
insert into funcionarios values (17,'Morgan','dmorgang@123-reg.co.uk','Feminino','Crianças','5/4/2011',148952,'Programmer IV',6);
insert into funcionarios values (18,'Nguyen','jnguyenh@google.com','Masculino','Lar','11/3/2014',93804,'Geologist II',5);
insert into funcionarios values (19,'Day','rdayi@chronoengine.com','Masculino','Eletronicos','9/22/2004',109890,'VP Sales',3);

insert into funcionarios values (21,'Bryant','sbryantk@wunderground.com','Feminino','Industrial','8/12/2005',78052,'Software Consultant',3);
insert into funcionarios values (22,'Alexander','kalexanderl@marketwatch.com','Masculino','Automotivo','12/26/2011',144724,'Marketing Assistant',2);
insert into funcionarios values (23,'Chapman','jchapmanm@archive.org','Feminino','Joalheria','4/12/2001',126103,'Senior Developer',4);
insert into funcionarios values (24,'Kelly','ekellyn@weibo.com','Masculino','Jardim','6/29/2006',144965,'Nurse Practicioner',2);
insert into funcionarios values (25,'Stephens','jstephenso@ow.ly','Masculino','Brinquedos','6/4/2004',70613,'Business Systems Development Analyst',1);
insert into funcionarios values (26,'Porter','vporterp@yelp.com','Feminino','Lar','5/30/2011',90746,'Dental Hygienist',2);
insert into funcionarios values (27,'Owens','cowensq@shareasale.com','Feminino','Lar','5/26/2005',78698,'Executive Secretary',2);
insert into funcionarios values (28,'Scott','cscottr@sphinn.com','Feminino','Books','3/2/2008',63336,'Sales Representative',4);
insert into funcionarios values (29,'Price','cprices@Brasil.gov','Feminino','Roupas','7/5/2013',95436,'Quality Engineer',3);
insert into funcionarios values (30,'Weaver','dweavert@shinystat.com','Masculino','Beleza','2/17/2012',83144,'Account Representative III',2);
insert into funcionarios values (31,'Willis','hwillisu@army.mil','Feminino','Ferramentas','10/21/2012',113507,'Accountant I',7);
insert into funcionarios values (32,'Torres','ltorresv@amazon.de','Masculino','Games','4/7/2014',78245,'Nuclear Power Engineer',6);

insert into funcionarios values (35,'Smith','bsmithy@statcounter.com','Feminino','Books','6/13/2013',94884,'Librarian',7);
insert into funcionarios values (36,'Bradley','nbradleyz@goodreads.com','Masculino','Outdoors','12/28/2008',107222,'Payment Adjustment Coordinator',3);
insert into funcionarios values (37,'Cruz','rcruz10@blinklist.com','Feminino','Lar','5/20/2000',61739,'Quality Engineer',1);
insert into funcionarios values (38,'Williamson','dwilliamson11@rediff.com','Feminino','Jardim','1/25/2012',82026,'Nurse',2);
insert into funcionarios values (39,'Kennedy','skennedy12@rediff.com','Masculino','Bebês','7/2/2011',79339,'Civil Engineer',1);
insert into funcionarios values (40,'Hawkins','phawkins13@twitpic.com','Feminino','Roupas','8/20/2011',76809,'Quality Engineer',6);
insert into funcionarios values (41,'Allen','jallen14@ustream.tv','Feminino','Bebês','5/10/2001',89680,'Web Developer III',6);
insert into funcionarios values (42,'Watkins','mwatkins15@wiley.com','Masculino','Computadores','4/1/2008',125668,'Executive Secretary',7);
insert into funcionarios values (43,'Ferguson','mferguson16@qq.com','Masculino','Esporte','5/29/2009',82960,'Account Representative III',6);

insert into funcionarios values (45,'Nguyen','mnguyen18@biblegateway.com','Masculino','Automotivo','1/24/2002',108378,'Electrical Engineer',7);
insert into funcionarios values (46,'Lawrence','jlawrence19@linkedin.com','Masculino','Outdoors','12/11/2011',133424,'Junior Executive',7);
insert into funcionarios values (47,'Oliver','joliver1a@cnbc.com','Feminino','Roupas','8/30/2013',42797,'Software Engineer III',5);
insert into funcionarios values (48,'Johnson','jjohnson1b@usgs.gov','Masculino','Computadores','4/26/2004',134940,'Financial Advisor',4);
insert into funcionarios values (49,'Crawford','hcrawford1c@dell.com','Masculino','Lar','12/21/2008',119471,'Editor',6);
insert into funcionarios values (50,'Armstrong','parmstrong1d@hc360.com','Feminino','Automotivo','3/16/2010',89969,'Senior Editor',4);
insert into funcionarios values (51,'Dixon','jdixon1e@dot.gov','Masculino','Bebês','9/26/2006',106281,'Senior Developer',3);
insert into funcionarios values (52,'Snyder','ssnyder1f@ca.gov','Feminino','Crianças','9/26/2002',141678,'Design Engineer',3);
insert into funcionarios values (53,'Coleman','dcoleman1g@dedecms.com','Masculino','Computadores','6/14/2008',110839,'Automation Specialist I',1);
insert into funcionarios values (54,'Reed','sreed1h@intel.com','Feminino','Brinquedos','4/15/2001',84275,'VP Marketing',5);
insert into funcionarios values (55,'Ross','jross1i@infoseek.co.jp','Masculino','Automotivo','4/21/2004',71363,'Environmental Tech',3);
insert into funcionarios values (56,'Watkins','kwatkins1j@youtu.be','Masculino','Jardim','12/2/2002',93680,'VP Accounting',3);
insert into funcionarios values (57,'Allen','jallen1k@google.cn','Feminino','Outdoors','11/20/2000',73755,'Geologist II',3);
insert into funcionarios values (58,'Baker','jbaker1l@usnews.com','Masculino','Games','3/2/2007',68857,'Information Systems Manager',2);
insert into funcionarios values (59,'Garcia','vgarcia1m@deviantart.com','Feminino','Saúde','3/19/2002',48360,'Registered Nurse',6);
insert into funcionarios values (60,'Lane','elane1n@un.org','Masculino','Outdoors','7/15/2004',104896,'Financial Advisor',5);
insert into funcionarios values (61,'Watson','cwatson1o@paypal.com','Feminino','Ferramentas','8/10/2009',81870,'Occupational Therapist',7);
insert into funcionarios values (62,'Boyd','aboyd1p@artisteer.com','Masculino','Automotivo','5/29/2007',69936,'Senior Editor',7);
insert into funcionarios values (63,'Young','hyoung1q@cisco.com','Feminino','Alimentícios','12/11/2007',138844,'Mechanical Systems Engineer',6);
insert into funcionarios values (64,'Cooper','tcooper1r@umich.edu','Masculino','Jardim','11/12/2011',139796,'Office Assistant IV',1);
insert into funcionarios values (65,'Jordan','jjordan1s@about.me','Feminino','Automotivo','1/27/2000',86939,'Tax Accountant',3);
insert into funcionarios values (66,'Rodriguez','lrodriguez1t@narod.ru','Masculino','Beleza','9/27/2003',141949,'Product Engineer',4);
insert into funcionarios values (67,'Mills','jmills1u@printfriendly.com','Feminino','Alimentícios','8/8/2004',114200,'Senior Sales Associate',7);
insert into funcionarios values (68,'Coleman','kcoleman1v@360.cn','Masculino','Beleza','9/2/2012',121378,'Web Developer I',7);
insert into funcionarios values (69,'Stewart','dstewart1w@usnews.com','Masculino','Brinquedos','8/22/2000',148144,'Data Coordiator',4);
insert into funcionarios values (70,'Jordan','ajordan1x@moonfruit.com','Feminino','Games','11/13/2004',93839,'Database Administrator III',2);
insert into funcionarios values (71,'Vasquez','evasquez1y@behance.net','Masculino','Bebês','10/20/2002',77285,'Operator',6);
insert into funcionarios values (72,'Knight','tknight1z@weibo.com','Feminino','Música','10/13/2002',135688,'Statistician I',4);
insert into funcionarios values (73,'Palmer','ipalmer20@newsvine.com','Masculino','Esporte','4/3/2002',78828,'Director of Sales',2);
insert into funcionarios values (74,'Washington','jwashington21@squidoo.com','Feminino','Lar','7/11/2000',47206,'Programmer III',3);
insert into funcionarios values (75,'Sanchez','dsanchez22@blog.com','Feminino','Outdoors','10/6/2013',78157,'Senior Financial Analyst',1);
insert into funcionarios values (76,'Grant','egrant23@prlog.org','Feminino','Eletronicos','7/23/2000',49296,'Software Test Engineer II',6);
insert into funcionarios values (77,'Daniels','ndaniels24@google.ca','Masculino','Ferramentas','2/7/2013',139061,'Environmental Specialist',3);
insert into funcionarios values (78,'Medina','jmedina25@dot.gov','Feminino','Games','9/16/2005',114989,'Marketing Assistant',3);
insert into funcionarios values (79,'Cunningham','acunningham26@simplemachines.org','Masculino','Roupas','9/15/2002',88345,'Junior Executive',6);
insert into funcionarios values (80,'Little','klittle27@un.org','Masculino','Música','9/12/2001',114647,'Editor',5);
insert into funcionarios values (81,'Welch','jwelch28@1und1.de','Masculino','Outdoors','7/24/2004',118514,'Accounting Assistant III',5);
insert into funcionarios values (82,'Gilbert','hgilbert29@xrea.com','Feminino','Lar','5/11/2003',93712,'Junior Executive',7);
insert into funcionarios values (83,'George','ageorge2a@gmpg.org','Masculino','Industrial','5/2/2009',86373,'Compensation Analyst',7);
insert into funcionarios values (84,'Hughes','mhughes2b@youtube.com','Masculino','Crianças','1/28/2013',122110,'Structural Engineer',6);
insert into funcionarios values (85,'Williams','jwilliams2c@businesswire.com','Feminino','Games','3/26/2006',95542,'Nurse',2);
insert into funcionarios values (86,'Martinez','wmartinez2d@barnesandnoble.com','Feminino','Outdoors','5/25/2013',131392,'Systems Administrator II',2);
insert into funcionarios values (87,'Hamilton','hhamilton2e@google.de','Masculino','Música','10/23/2010',98401,'VP Quality Control',1);
insert into funcionarios values (88,'Gomez','jgomez2f@mtv.com','Feminino','Ferramentas','9/19/2004',103806,'Accounting Assistant I',3);
insert into funcionarios values (89,'Webb','awebb2g@springer.com','Masculino','Saúde','4/10/2014',73686,'Tax Accountant',2);
insert into funcionarios values (90,'Thomas','tthomas2h@webnode.com','Masculino','Games','11/3/2011',55002,'Research Assistant IV',6);
insert into funcionarios values (91,'Wallace','swallace2i@state.tx.us','Masculino','Bebês','3/7/2005',65216,'Registered Nurse',4);
insert into funcionarios values (92,'Ortiz','aortiz2j@jigsy.com','Feminino','Automotivo','6/22/2010',113231,'Senior Editor',7);
insert into funcionarios values (93,'Knight','nknight2k@cafepress.com','Feminino','Eletronicos','4/3/2014',125847,'Chemical Engineer',5);
insert into funcionarios values (94,'Hunt','thunt2l@twitpic.com','Feminino','Música','5/31/2000',140430,'Senior Cost Accountant',2);

insert into funcionarios values (96,'Mason','wmason2n@xrea.com','Masculino','Beleza','2/21/2004',96673,'Accounting Assistant I',1);
insert into funcionarios values (97,'Williams','wwilliams2o@berkeley.edu','Feminino','Games','3/14/2013',79267,'VP Quality Control',7);
insert into funcionarios values (98,'Freeman','lfreeman2p@tiny.cc','Feminino','Crianças','10/11/2007',109154,'Accountant I',4);
insert into funcionarios values (99,'Palmer','ipalmer2q@youku.com','Feminino','Books','4/24/2002',138815,'Physical Therapy Assistant',3);
insert into funcionarios values (100,'Bell','rbell2r@utexas.edu','Masculino','Esporte','8/3/2007',68210,'Registered Nurse',4);

/* FILTRANDO VALORES NULOS */

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE sexo = 'F';

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL = NULL;

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NULL;

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NOT NULL;

/* IS OU IS NOT NULL */

/* UTILIZANDO O UPDATE PARA ATUALIZAR VALORES */

SELECT NOME, EMAIL
FROM CLIENTE;

UPDATE CLIENTE
SET EMAIL = 'LILIAN@HOTMAIL.COM';

SELECT NOME, EMAIL
FROM CLIENTE;

/* WHERE - VAI SER O SEU MELHOR AMIGO DA VIDA
PRA VIDA INTEIRA */


SELECT * FROM CLIENTE
WHERE NOME = 'LILIAN';

UPDATE CLIENTE
SET EMAIL = 'JOAOA@IG.COM.BR'
WHERE NOME = 'JOAO';

SELECT NOME, EMAIL
FROM CLIENTE;

UPDATE CLIENTE
SET EMAIL = 'JORGE@IG.COM.BR'
WHERE NOME = 'JORGE';

SELECT NOME, EMAIL
FROM CLIENTE;

/*COMMIT E ROLLBACK */

/* DELETANDO REGISTROS COM A CLAUSULA DELETE */

DELETE FROM CLIENTE; 

SELECT * FROM CLIENTE WHERE NOME = 'ANA';

SELECT COUNT(*) FROM CLIENTE; -- TOTAL 6

SELECT COUNT(*) FROM CLIENTE -- TOTAL DELETADO 1
WHERE NOME = 'ANA';

DELETE FROM CLIENTE
WHERE NOME = 'ANA';

SELECT COUNT(*) FROM CLIENTE; -- RESTANTE 5

SELECT 6 - 1;

SELECT * FROM CLIENTE;

INSERT INTO CLIENTE VALUES('CARLA','F','C.LOPES@UOL.COM',45638854,'4575-0048',
'RUA COPPER LEAF - WILLIAMSBURG - KITCHENER');

SELECT * FROM CLIENTE;

DELETE FROM CLIENTE
WHERE NOME = 'CARLA'
OR EMAIL = 'LILIAN@HOTMAIL.COM';

SELECT * FROM CLIENTE
WHERE NOME = 'CARLA'
OR EMAIL = 'LILIAN@HOTMAIL.COM';

SELECT * FROM CLIENTE -- OR TRAZ TODO MUNDO COM PELO MENOS UMA DAS DUAS CONDICOES
WHERE NOME = 'CARLA'
AND EMAIL = 'LILIAN@HOTMAIL.COM';

DELETE FROM CLIENTE -- TRAZ APENAS O REGISTRO QUE SATISFACA AS DUAS CONDICOES
WHERE NOME = 'CARLA'
AND EMAIL = 'LILIAN@HOTMAIL.COM';

SELECT * FROM CLIENTE;

/* ENTRANDO COM MAIS TELEFONES */

UPDATE CLIENTE 
SET TELEFONE = '97865434'
WHERE NOME = 'JOAO';

SELECT * FROM CLIENTE;

UPDATE CLIENTE 
SET TELEFONE = '22923110 - 97865434'
WHERE NOME = 'JOAO';

SELECT * FROM CLIENTE;

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;

SELECT ENDERECO, COUNT(*) FROM CLIENTE
GROUP BY ENDERECO;

INSERT INTO CLIENTE VALUES('CARLA','F','C.LOPES@UOL.COM',45638854,'9301-7585',
'RUA COPPER LEAF - WILLIAMSBURG - KITCHENER');

SELECT SEXO, COUNT(*) AS QTD
FROM CLIENTE
GROUP BY SEXO;

/* PRIMEIRA FORMA NORMAL */

/*

1 - TODO CAMPO VETORIZADO SE TORNAR'A OUTRA TABELA

[AMARELO, AZUL, LARANJA, VERDE] -> CORES
[KA, FIESTA, UNO, CIVIC]-> CARROS

2 - TODO CAMPO MULTIVALORADO SE TORNAR'A OUTRA TABELA.
QUANDO O CAMPO FOR DIVIS'IVEL

3 - TODA TABELA NECESSITA DE PELO MENOS UM CAMPO QUE IDENTIFIQUE
TODO O REGISTRO COMO SENDO UNICO.
ISSO ;E O QUE CHAMAMOS DE CHAVE PRIMARIA OU PRIMARY KEY.


*/

/* CADINALIDADE */

/* QUEM DEFINE A CARDINALIDADE É A REGRA DE NEGOCIOS */

/* PRIMEIRO ALGARISMO - OBRIGATORIEDADE 
0 - NAO OBRIGATORIO
1 - OBRIGATORIO

SEGUNDO ALGARISMO - CARDINALIDADE
1 - MAXIMO DE UM
N - MAIS DE UM
*/

CREATE DATABASE COMERCIO;

USE COMERCIO;

SHOW DATABASES; --> OPCIONAL

DROP TABLE CLIENTE;

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	SEXO ENUM('M','F') NOT NULL,
	EMAIL VARCHAR(50) UNIQUE,
	CPF VARCHAR(15) UNIQUE
);

CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT, 
	RUA VARCHAR(30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	ID_CLIENTE INT UNIQUE,

	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);

CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT, 
	TIPO ENUM('RES','COM','CEL') NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	ID_CLIENTE INT,

	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);

/* ENDERECO - OBRIGATORIO 
CADASTRO DE SOMENTE UM.

TELEFONE - NAO OBRIGATORIO
CADASTRO DE MAIS DE UM (OPCIONAL) /*

/*
CHAVE ESTRANGEIRA É A CHAVE PRIMARIA DE UMA TABELA
QUE VAI ATÉ A OUTRA TABELA PARA FAZER REFERENCIA ENTRE
REGISTROS */

/* EM RELACIONAMENTO 1 X 1 A CHAVE ESTRANGEIRA FICA NA TABELA MAIS FRACA */

/* EM RELACIONAMENTO 1 X N A CHAVE ESTRANGEIRA FICARA SEMPRE NA
CARDINALIDADE N */

INSERT INTO CLIENTE VALUES(NULL,'JOAO','M','JOAOA@IG.COM','76567587887');
INSERT INTO CLIENTE VALUES(NULL,'CARLOS','M','CARLOSA@IG.COM','5464553466');
INSERT INTO CLIENTE VALUES(NULL,'ANA','F','ANA@IG.COM','456545678');
INSERT INTO CLIENTE VALUES(NULL,'CLARA','F',NULL,'5687766856');
INSERT INTO CLIENTE VALUES(NULL,'JORGE','M','JORGE@IG.COM','8756547688');
INSERT INTO CLIENTE VALUES(NULL,'CELIA','M','JCELIA@IG.COM','5767876889');

SELECT * FROM CLIENTE;

+-----------+--------+------+----------------+-------------+
| IDCLIENTE | NOME   | SEXO | EMAIL          | CPF         |
+-----------+--------+------+----------------+-------------+
|         1 | JOAO   | M    | JOAOA@IG.COM   | 76567587887 |
|         2 | CARLOS | M    | CARLOSA@IG.COM | 5464553466  |
|         3 | ANA    | F    | ANA@IG.COM     | 456545678   |
|         4 | CLARA  | F    | NULL           | 5687766856  |
|         5 | JORGE  | M    | JORGE@IG.COM   | 8756547688  |
|         6 | CELIA  | M    | JCELIA@IG.COM  | 5767876889  |
+-----------+--------+------+----------------+-------------+

DESC ENDERECO;

INSERT INTO ENDERECO VALUES(NULL,'RUA ANTONIO SA','CENTRO','B. HORIZONTE','MG',4);
INSERT INTO ENDERECO VALUES(NULL,'RUA CAPITAO HERMES','CENTRO','RIO DE JANEIRO','RJ',1);
INSERT INTO ENDERECO VALUES(NULL,'RUA PRES VARGAS','JARDINS','SAO PAULO','SP',3);
INSERT INTO ENDERECO VALUES(NULL,'RUA ALFANDEGA','ESTACIO','RIO DE JANEIRO','RJ',2);
INSERT INTO ENDERECO VALUES(NULL,'RUA DO OUVIDOR','FLAMENGO','RIO DE JANEIRO','RJ',6);
INSERT INTO ENDERECO VALUES(NULL,'RUA URUGUAIANA','CENTRO','VITORIA','ES',5);


INSERT INTO ENDERECO VALUES(NULL,'RUA ALFANDEGA','CENTRO','SAO PAULO','SP',5);

SELECT * FROM ENDERECO;

DESC TELEFONE;

INSERT INTO TELEFONE VALUES(NULL,'CEL','78458743',5);
INSERT INTO TELEFONE VALUES(NULL,'RES','56576876',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','87866896',1);
INSERT INTO TELEFONE VALUES(NULL,'COM','54768899',2);
INSERT INTO TELEFONE VALUES(NULL,'RES','99667587',1);
INSERT INTO TELEFONE VALUES(NULL,'CEL','78989765',3);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99766676',3);
INSERT INTO TELEFONE VALUES(NULL,'COM','66687899',1);
INSERT INTO TELEFONE VALUES(NULL,'RES','89986668',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88687909',2);

SELECT * FROM TELEFONE;

/* SELECAO, PROJECAO E JUNCAO */

/* PROJECAO -> É TUDO QUE VOCE QUER VER NA TELA */

SELECT NOW() AS DATA_ATUAL;

SELECT 2 + 2 AS SOMA;

SELECT 2 + 2 AS SOMA, NOME, NOW()
FROM CLIENTE;

/* SELECAO -> É UM SUBCONJUNTO DO CONJUNTO TOTAL DE REGISTROS DE UMA TABELA
A CLAUSULA DE SELECAO É O WHERE
*/

SELECT NOME, SEXO, EMAIL /* PROJECAO */
FROM CLIENTE /* ORIGEM */
WHERE SEXO = 'F'; /* SELECAO */

SELECT NUMERO /* PROJECAO */
FROM TELEFONE /* ORIGEM */
WHERE TIPO = 'CEL'; /* SELECAO */

/* JUNCAO -> JOIN */

SELECT NOME, EMAIL, IDCLIENTE
FROM CLIENTE;

SELECT ID_CLIENTE, BAIRRO, CIDADE
FROM ENDERECO;

+--------+----------------+-----------+
| NOME   | EMAIL          | IDCLIENTE |
+--------+----------------+-----------+
| JOAO   | JOAOA@IG.COM   |         1 |
| CARLOS | CARLOSA@IG.COM |         2 |
| ANA    | ANA@IG.COM     |         3 |
| CLARA  | NULL           |         4 |
| JORGE  | JORGE@IG.COM   |         5 |
| CELIA  | JCELIA@IG.COM  |         6 |
+--------+----------------+-----------+

+------------+----------+----------------+
| ID_CLIENTE | BAIRRO   | CIDADE         |
+------------+----------+----------------+
|          4 | CENTRO   | B. HORIZONTE   |
|          1 | CENTRO   | RIO DE JANEIRO |
|          3 | JARDINS  | SAO PAULO      |
|          2 | ESTACIO  | RIO DE JANEIRO |
|          6 | FLAMENGO | RIO DE JANEIRO |
|          5 | CENTRO   | VITORIA        |
+------------+----------+----------------+

/* NOME, SEXO, BAIRRO, CIDADE */

SELECT NOME, SEXO, BAIRRO, CIDADE /* PROJECAO */
FROM CLIENTE, ENDERECO /*ORIGEM */
WHERE IDCLIENTE = ID_CLIENTE; /* JUNCAO */

+--------+------+----------+----------------+
| NOME   | SEXO | BAIRRO   | CIDADE         |
+--------+------+----------+----------------+
| JOAO   | M    | CENTRO   | RIO DE JANEIRO |
| CARLOS | M    | ESTACIO  | RIO DE JANEIRO |
| ANA    | F    | JARDINS  | SAO PAULO      |
| CLARA  | F    | CENTRO   | B. HORIZONTE   |
| JORGE  | M    | CENTRO   | VITORIA        |
| CELIA  | M    | FLAMENGO | RIO DE JANEIRO |
+--------+------+----------+----------------+

/* WHERE = SELECAO */

SELECT NOME, SEXO, BAIRRO, CIDADE 
FROM CLIENTE, ENDERECO 
WHERE IDCLIENTE = ID_CLIENTE
AND SEXO = 'F'; 

+-------+------+---------+--------------+
| NOME  | SEXO | BAIRRO  | CIDADE       |
+-------+------+---------+--------------+
| ANA   | F    | JARDINS | SAO PAULO    |
| CLARA | F    | CENTRO  | B. HORIZONTE |
+-------+------+---------+--------------+

/* WHERE IDCLIENTE = ID_CLIENTE
AND SEXO = 'F'; -> TABELA VERDADE */

INSERT INTO ENDERECO VALUES(NULL,'RUA ANTONIO SA','CENTRO','B. HORIZONTE','MG',15);

SELECT NOME, SEXO, BAIRRO, CIDADE
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE;

+--------+------+----------+----------------+
| NOME   | SEXO | BAIRRO   | CIDADE         |
+--------+------+----------+----------------+
| JOAO   | M    | CENTRO   | RIO DE JANEIRO |
| CARLOS | M    | ESTACIO  | RIO DE JANEIRO |
| ANA    | F    | JARDINS  | SAO PAULO      |
| CLARA  | F    | CENTRO   | B. HORIZONTE   |
| JORGE  | M    | CENTRO   | VITORIA        |
| CELIA  | M    | FLAMENGO | RIO DE JANEIRO |
+--------+------+----------+----------------+

SELECT NOME, SEXO, BAIRRO, CIDADE /* PROJECAO */ 
FROM CLIENTE /* ORIGEM */
	INNER JOIN ENDERECO /*JUNCAO */
	ON IDCLIENTE = ID_CLIENTE
WHERE SEXO = 'F'; /* SELECAO */

/* NOME, SEXO, EMAIL, TIPO, NUMERO */

SELECT NOME, SEXO, EMAIL, TIPO, NUMERO
FROM CLIENTE 
INNER JOIN TELEFONE
ON IDCLIENTE = ID_CLIENTE;

/* NOME, SEXO, BAIRRO, CIDADE, TIPO, NUMERO */

SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE, TELEFONE.TIPO, TELEFONE.NUMERO
FROM CLIENTE 
INNER JOIN ENDERECO
ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
INNER JOIN TELEFONE
ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;

+--------+------+---------+----------------+------+----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO   |
+--------+------+---------+----------------+------+----------+
| JORGE  | M    | CENTRO  | VITORIA        | CEL  | 78458743 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 56576876 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 87866896 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | COM  | 54768899 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | RES  | 99667587 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 78989765 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 99766676 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 66687899 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 89986668 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 88687909 |
+--------+------+---------+----------------+------+----------+

SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE;

+--------+------+---------+----------------+------+----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO   |
+--------+------+---------+----------------+------+----------+
| JORGE  | M    | CENTRO  | VITORIA        | CEL  | 78458743 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 56576876 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 87866896 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | COM  | 54768899 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | RES  | 99667587 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 78989765 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 99766676 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 66687899 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 89986668 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 88687909 |
+--------+------+---------+----------------+------+----------+

/*
	
	DML - DATA MANIPULATION LANGUAGE
	DDL - DATA DEFINITION LANGUAGE
	DCL - DATA CONTROL LANGUAGE
	TCL - TRANSACTION CONTROL LANGUAGE

*/

/* INSERT */

INSERT INTO CLIENTE VALUES(NULL,'PAULA','M',NULL,'77437493');
INSERT INTO ENDERECO VALUES(NULL,'RUA JOAQUIM SILVA','ALVORADA','NITEROI','RJ',7);

SELECT * FROM CLIENTE;

/* FILTROS */

SELECT * FROM CLIENTE
WHERE SEXO = 'M';

/* UPDATE */

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 7;

UPDATE CLIENTE
SET SEXO = 'F'
WHERE IDCLIENTE = 7;

/* DELETE */ 

INSERT INTO CLIENTE VALUES(NULL,'XXX','M',NULL,'XXX');

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 8;

DELETE FROM CLIENTE WHERE IDCLIENTE = 8;

/* 
  DDL - DATA DEFINITION LANGUAGE
*/

CREATE TABLE PRODUTO(
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME_PRODUTO VARCHAR(30) NOT NULL,
	PRECO INT,
	FRETE FLOAT(10,2) NOT NULL
);

/* ALTER TABLE */

/* ALTERANDO O NOME DE UMA COLUNA - CHANGE */

ALTER TABLE PRODUTO
CHANGE PRECO VALOR_UNITARIO INT NOT NULL;

DESC PRODUTO;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | int(11)     | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

ALTER TABLE PRODUTO
CHANGE VALOR_UNITARIO VALOR_UNITARIO INT;

DESC PRODUTO;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | int(11)     | YES  |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

/* MODIFY - ALTERANDO O TIPO */

ALTER TABLE PRODUTO
MODIFY VALOR_UNITARIO VARCHAR(50) NOT NULL;

/* ADICIONANDO COLUNAS */

ALTER TABLE PRODUTO
ADD PESO FLOAT(10,2) NOT NULL;

/* APAGANDO UMA COLUNA */

ALTER TABLE PRODUTO
DROP COLUMN PESO;

/* ADICIONANDO UMA COLUNA NA ORDEM ESPECIFICA */

ALTER TABLE PRODUTO
ADD COLUMN PESO FLOAT(10,2) NOT NULL
AFTER NOME_PRODUTO;

ALTER TABLE PRODUTO
DROP COLUMN PESO;

ALTER TABLE PRODUTO
ADD COLUMN PESO FLOAT(10,2) NOT NULL
FIRST;

/* EXERCICIOS DML */

INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
INSERT INTO CLIENTE VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','F',NULL,'0876655');
INSERT INTO CLIENTE VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
INSERT INTO CLIENTE VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
INSERT INTO CLIENTE VALUES(NULL,'LORENA','M',NULL,'774557887');
INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','M',NULL,'54376457');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
INSERT INTO CLIENTE VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
INSERT INTO CLIENTE VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
INSERT INTO CLIENTE VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');

/* CADASTRE UM ENDERECO PARA CADA CLIENTE */

INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',9);
INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',10);
INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',11);
INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',12);
INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',13);
INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',14);
INSERT INTO ENDERECO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',15);
INSERT INTO ENDERECO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',16);
INSERT INTO ENDERECO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',17);
INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',18);
INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',19);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',20);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',21);

/* CADASTRE TELEFONES PARA OS CLIENTES */


INSERT INTO TELEFONE VALUES(NULL,'RES','68976565',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99656675',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','33567765',11);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88668786',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','55689654',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','88687979',12);
INSERT INTO TELEFONE VALUES(NULL,'COM','88965676',13);
INSERT INTO TELEFONE VALUES(NULL,'CEL','89966809',15);
INSERT INTO TELEFONE VALUES(NULL,'COM','88679978',16);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99655768',17);
INSERT INTO TELEFONE VALUES(NULL,'RES','89955665',18);
INSERT INTO TELEFONE VALUES(NULL,'RES','77455786',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','89766554',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','77755785',20);
INSERT INTO TELEFONE VALUES(NULL,'COM','44522578',20);

/* RELATORIO GERAL DE TODOS OS CLIENTES */

/* RELATORIO GERAL DE TODOS OS CLIENTES (TELEFONE E ENDERECO) */

DESC CLIENTE;
DESC ENDERECO;
DESC TELEFONE;

+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| IDCLIENTE | int(11)       | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30)   | NO   |     | NULL    |                |
| SEXO      | enum('M','F') | NO   |     | NULL    |                |
| EMAIL     | varchar(50)   | YES  | UNI | NULL    |                |
| CPF       | varchar(15)   | YES  | UNI | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int(11)     | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(30) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | char(2)     | NO   |     | NULL    |                |
| ID_CLIENTE | int(11)     | YES  | UNI | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int(11)                 | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('RES','COM','CEL') | NO   |     | NULL    |                |
| NUMERO     | varchar(10)             | NO   |     | NULL    |                |
| ID_CLIENTE | int(11)                 | YES  | MUL | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+


SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, 
	   E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, 
	   T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;


/* RELATORIO DE HOMENS */

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, 
	   E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, 
	   T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'M';

/* 12 13 18 19  */

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 12
OR IDCLIENTE = 13
OR IDCLIENTE = 18
OR IDCLIENTE = 19;

SELECT * FROM CLIENTE
WHERE IDCLIENTE IN (12,13,18,19);

UPDATE CLIENTE SET SEXO = 'F'
WHERE IDCLIENTE IN (12,13,18,19);

/* RELATORIO DE MULHERES */

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, 
	   E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, 
	   T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';

UPDATE CLIENTE SET SEXO = 'M'
WHERE IDCLIENTE = 16;

/* QUANTIDADE DE HOMENS E MULHERES */

SELECT COUNT(*) AS QUANTIDADE, SEXO
FROM CLIENTE
GROUP BY SEXO;

+------------+------+
| QUANTIDADE | SEXO |
+------------+------+
|         10 | M    |
|         10 | F    |
+------------+------+

/* IDS E EMAIL DAS MULHERES QUE MOREM NO CENTRO DO RIO DE JANEIRO E 
NAO TENHAM CELULAR */

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO';

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO, T.TIPO, E.BAIRRO, E.CIDADE
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO';


SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO, T.TIPO, E.BAIRRO, E.CIDADE
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO'
AND TIPO = 'RES' OR TIPO = 'COM';

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO, T.TIPO, E.BAIRRO, E.CIDADE
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO'
AND (TIPO = 'RES' OR TIPO = 'COM');



SELECT   C.NOME, C.EMAIL, T.NUMERO AS CELULAR /* PROJECAO */
FROM CLIENTE C /* ORIGEM */
INNER JOIN ENDERECO E /*JUNCAO */
ON C.IDCLIENTE = E.ID_CLIENTE /*JUNCAO CONDICAO */
INNER JOIN TELEFONE T /*JUNCAO */
ON C.IDCLIENTE = T.ID_CLIENTE /*JUNCAO CONDICAO*/
WHERE TIPO = 'CEL' AND ESTADO = 'RJ'; /*SELECAO*/



SELECT C.NOME, C.EMAIL, T.NUMERO AS CELULAR
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND ESTADO = 'SP';

/* nome, email, numero, estado */

SELECT C.NOME, C.EMAIL, E.ESTADO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;


IFNULL()

SELECT  C.NOME, 
		IFNULL(C.EMAIL,'NAO TEM EMAIL'), 
		E.ESTADO, 
		T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

SELECT  C.NOME, 
		IFNULL(C.EMAIL,'************'), 
		E.ESTADO, 
		T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;



SELECT  C.NOME, 
		IFNULL(C.EMAIL,'************') AS "E-MAIL", 
		E.ESTADO, 
		T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

/* VIEW */

SELECT  C.NOME, 
		C.SEXO, 
		C.EMAIL, 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE;

CREATE VIEW RELATORIO AS
SELECT  C.NOME, 
		C.SEXO, 
		C.EMAIL, 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE;

SELECT * FROM RELATORIO;

SHOW TABLES;
SHOW DATABASES;
SHOW VIEW; -- NAO EXISTE

/* APAGANDO UMA VIEW */

DROP VIEW RELATORIO;

/* INSERINDO UM PREFIXO */

CREATE VIEW V_RELATORIO AS
SELECT  C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'CLIENTE SEM EMAIL') AS "E-MAIL", 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE;

SELECT NOME, NUMERO, ESTADO
FROM V_RELATORIO;

/* UPDATE, INSERT E DELETE - DML */

INSERT INTO V_RELATORIO VALUES(
'ANDREIA','F','ANDREIA@UOL.COM.BR','CEL','873547864','CENTRO','VITORIA','ES'
);

ERROR 1394 (HY000): Can not insert into join view 'comercio.v_relatorio' without fields list
ERROR 1395 (HY000): Can not delete from join view 'comercio.v_relatorio'

DELETE FROM V_RELATORIO WHERE NOME = 'JORGE';

/* É PERMITIDO FAZER UPDATES EM VIEWS COM JOIN */

UPDATE V_RELATORIO SET NOME = 'JOSE' WHERE NOME = 'JORGE';

CREATE TABLE JOGADORES(
	IDJOGADOR INT,
	NOME VARCHAR(30),
	ESTADO CHAR(2)
);

INSERT INTO JOGADORES VALUES(1,'GUERRERO','RS');
INSERT INTO JOGADORES VALUES(2,'GABIGOL','RJ');
INSERT INTO JOGADORES VALUES(3,'GANSO','RJ');
INSERT INTO JOGADORES VALUES(4,'NENÊ', 'RJ');
INSERT INTO JOGADORES VALUES(5,'LOVE','SP');

CREATE VIEW V_JOGADORES AS
SELECT NOME, ESTADO
FROM JOGADORES;

SELECT * FROM V_JOGADORES;

DELETE FROM V_JOGADORES
WHERE NOME = 'GUERRERO';

INSERT INTO V_JOGADORES VALUES('GUERRERO','RS');

SELECT * FROM JOGADORES;

mysql> SELECT * FROM JOGADORES;


SELECT * FROM V_RELATORIO
WHERE SEXO = 'F';

/* ORDER BY */

CREATE TABLE ALUNOS(
	NUMERO INT,
	NOME VARCHAR(30)
);

INSERT INTO ALUNOS VALUES(1,'JOAO');
INSERT INTO ALUNOS VALUES(1,'MARIA');
INSERT INTO ALUNOS VALUES(2,'ZOE');
INSERT INTO ALUNOS VALUES(2,'ANDRE');
INSERT INTO ALUNOS VALUES(3,'CLARA');
INSERT INTO ALUNOS VALUES(1,'CLARA');
INSERT INTO ALUNOS VALUES(4,'MAFRA');
INSERT INTO ALUNOS VALUES(5,'JANAINA');
INSERT INTO ALUNOS VALUES(1,'JANAINA');
INSERT INTO ALUNOS VALUES(3,'MARCELO');
INSERT INTO ALUNOS VALUES(4,'GIOVANI');
INSERT INTO ALUNOS VALUES(5,'ANTONIO');
INSERT INTO ALUNOS VALUES(6,'ANA');
INSERT INTO ALUNOS VALUES(6,'VIVIANE'); 

SELECT * FROM ALUNOS
ORDER BY NUMERO;

SELECT * FROM ALUNOS
ORDER BY 1;

SELECT * FROM ALUNOS
ORDER BY 2;

/* ORDENANDO POR MAIS DE UMA COLUNA */

SELECT * FROM ALUNOS
ORDER BY 1;

SELECT * FROM ALUNOS
ORDER BY NUMERO, NOME;

SELECT * FROM ALUNOS
ORDER BY 1, 2;

/* MESCLANDO ORDER BY COM PROJECAO */

SELECT NOME FROM ALUNOS
ORDER BY 1, 2;

SELECT NOME FROM ALUNOS
ORDER BY NUMERO, NOME;


/* ORDER BY DESC / ASC */

SELECT * FROM ALUNOS
ORDER BY 1, 2;

SELECT * FROM ALUNOS
ORDER BY 1 ASC;

SELECT * FROM ALUNOS
ORDER BY 1 DESC;

SELECT * FROM ALUNOS
ORDER BY 1, 2 DESC;

SELECT * FROM ALUNOS
ORDER BY 1 DESC, 2 DESC;

/* ORDENANDO COM JOINS */


SELECT  C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'CLIENTE SEM EMAIL') AS "E-MAIL", 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
ORDER BY 1;

SHOW TABLES;

SELECT * FROM V_RELATORIO
ORDER BY 1;

/* Delimitador */

SELECT  C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'CLIENTE SEM EMAIL') AS "E-MAIL", 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
ORDER BY 1

STATUS

DELIMITER $

SELECT * FROM V_RELATORIO;

DELIMITER  @

DELIMITER@

DELIMITER @ @

DELIMITER ;

/* STORED PROCEDURES */

SELECT 'MAFRA';

DELIMITER $

CREATE PROCEDURE NOME()
BEGIN

	QUALQUER PROGRAMACAO;

END
$


DELIMITER $

CREATE PROCEDURE NOME_EMPRESA()
BEGIN
	
	SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA;

END
$

/* CHAMANDO UMA PROCEDURE */


CALL NOME_EMPRESA()$

DELIMITER ;

CALL NOME_EMPRESA();

/* PROCEDURES COM PARAMETROS */

SELECT 10 + 10 AS CONTA;

DELIMITER $

CREATE PROCEDURE CONTA()
BEGIN
	
	SELECT 10 + 10 AS CONTA;

END
$

CALL CONTA();

DROP PROCEDURE CONTA;

DELIMITER $

CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT)
BEGIN
	
	SELECT NUMERO1 + NUMERO2 AS CONTA;

END
$

CALL CONTA(100,50)$
CALL CONTA(345634,4354)$
CALL CONTA(55654,56760)$
CALL CONTA(45646,6766)$

/* Recap */

CREATE DATABASE MAFRA;

USE MAFRA;

CREATE TABLE ALUNOS(
	NUMERO INT,
	NOME VARCHAR(30)
);

DROP DATABASE COMERCIO;
DROP DATABASE EXEMPLO;
DROP DATABASE MAFRA;
DROP DATABASE PROJETO;
DROP DATABASE TESTE;


/* PROCEDURES */


CREATE DATABASE PROJETO;

USE PROJETO;

CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	HORAS INT(3) NOT NULL,
	VALOR FLOAT(10,2) NOT NULL
);

INSERT INTO CURSOS VALUES(NULL,'JAVA',30,500.00);
INSERT INTO CURSOS VALUES(NULL,'FUNDAMENTOS DE BANCOS DE DADOS',40,700.00);

SELECT * FROM CURSOS;

DELIMITER #

STATUS

CREATE PROCEDURE CAD_CURSO(P_NOME VARCHAR(30),
						   P_HORAS INT(30),
						   P_PRECO  FLOAT(10,2))
BEGIN
	
	INSERT INTO CURSOS VALUES(NULL,P_NOME,P_HORAS,P_PRECO);

END
#

DELIMITER ;

CALL CAD_CURSO('BI SQL SERVER',35,3000.00);
CALL CAD_CURSO('POWER BI',20,1000.00);
CALL CAD_CURSO('TABLEAU',30,1200.00);

/* CRIAR UMA PROCEDURE PARA CONSULTAR CURSOS */

/* QUANTIDADE DE HOMENS E MULHERES */


/* IDS E EMAIL DAS MULHERES QUE MOREM NO CENTRO DO RIO DE JANEIRO E 
NAO TENHAM CELULAR */


/* A29 FUNCOES DE AGREGACAO NUMERICAS */

CREATE TABLE VENDEDORES(
	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	SEXO CHAR(1),
	JANEIRO FLOAT(10,2),
	FEVEREIRO FLOAT(10,2),
	MARCO FLOAT(10,2)
);

INSERT INTO VENDEDORES VALUES(NULL,'CARLOS','M',76234.78,88346.87,5756.90);
INSERT INTO VENDEDORES VALUES(NULL,'MARIA','F',5865.78,6768.87,4467.90);
INSERT INTO VENDEDORES VALUES(NULL,'ANTONIO','M',78769.78,6685.87,6664.90);
INSERT INTO VENDEDORES VALUES(NULL,'CLARA','F',5779.78,446886.87,8965.90);
INSERT INTO VENDEDORES VALUES(NULL,'ANDERSON','M',676545.78,77544.87,578665.90);
INSERT INTO VENDEDORES VALUES(NULL,'IVONE','F',57789.78,44774.87,68665.90);
INSERT INTO VENDEDORES VALUES(NULL,'JOAO','M',4785.78,66478.87,6887.90);
INSERT INTO VENDEDORES VALUES(NULL,'CELIA','F',89667.78,57654.87,5755.90);

/* MAX - TRAZ O VALOR MAXIMO DE UMA COLUNA */

SELECT MAX(FEVEREIRO) AS MAIOR_FEV
FROM VENDEDORES;


/* MIN - TRAZ O VALOR MINIMO DE UMA COLUNA */

SELECT MIN(FEVEREIRO) AS MENOR_FEV
FROM VENDEDORES;

/* AVG - TRAZ O VALOR MEDIO DE UMA COLUNA */

SELECT AVG(FEVEREIRO) AS MEDIA_FEV
FROM VENDEDORES;

/* VARIAS FUNCOES */

SELECT MAX(JANEIRO) AS MAX_JAN,
       MIN(JANEIRO) AS MIN_JAN,
	   AVG(JANEIRO) AS MEDIA_JAN
	   FROM VENDEDORES;
	 
/*TRUNCATE */
	 
SELECT MAX(JANEIRO) AS MAX_JAN,
       MIN(JANEIRO) AS MIN_JAN,
	   TRUNCATE(AVG(JANEIRO),2) AS MEDIA_JAN
	   FROM VENDEDORES;

/* A30 - AGREGANDO COM SUM() */

SELECT SUM(JANEIRO) AS TOTAL_JAN
FROM VENDEDORES;

SELECT SUM(JANEIRO) AS TOTAL_JAN,
	   SUM(FEVEREIRO) AS TOTAL_FEV,
	   SUM(MARCO) AS TOTAL_MAR
FROM VENDEDORES;

/* VENDAS POR SEXO */

SELECT SEXO, SUM(MARCO) AS TOTAL_MARCO
FROM VENDEDORES
GROUP BY SEXO;

/* A 31 - SUBQUERIES

VENDEDOR QUE VENDEU MENOS EM MARCO
E O SEU NOME 

NOME E O VALOR QUE VENDEU MAIS EM MARCO

QUEM VENDEU MAIS QUE O VALOR MEDIO DE FEV
*/

SELECT NOME, MIN(MARCO) AS MIN_MARCO
FROM VENDEDORES;

SELECT * FROM VENDEDORES;

SELECT MIN(MARCO) FROM VENDEDORES;

SELECT NOME, MARCO FROM VENDEDORES
WHERE MARCO = (SELECT MIN(MARCO) FROM VENDEDORES);

SELECT NOME, MARCO FROM VENDEDORES
WHERE MARCO = (SELECT MAX(FEVEREIRO) FROM VENDEDORES);

SELECT NOME, MARCO FROM VENDEDORES
WHERE MARCO > (SELECT AVG(MARCO) FROM VENDEDORES);

SELECT NOME, FEVEREIRO FROM VENDEDORES
WHERE FEVEREIRO > (SELECT AVG(FEVEREIRO) FROM VENDEDORES);

SELECT AVG(FEVEREIRO) FROM VENDEDORES;

SELECT NOME, FEVEREIRO FROM VENDEDORES
WHERE FEVEREIRO < (SELECT AVG(FEVEREIRO) FROM VENDEDORES);

/* A32 - OPERACOES EM LINHA */

SELECT * FROM VENDEDORES;

SELECT NOME,
	   JANEIRO,
	   FEVEREIRO,
	   MARCO,
	   (JANEIRO+FEVEREIRO+MARCO) AS "TOTAL",
	   TRUNCATE((JANEIRO+FEVEREIRO+MARCO)/3,2) AS "MEDIA"
	   FROM VENDEDORES;
	   
/* APLICANDO UM % */

SELECT NOME,
	   JANEIRO,
	   FEVEREIRO,
	   MARCO,
	   (JANEIRO+FEVEREIRO+MARCO) AS "TOTAL",
	   (JANEIRO+FEVEREIRO+MARCO) * .25 AS "DESCONTO",
	   TRUNCATE((JANEIRO+FEVEREIRO+MARCO)/3,2) AS "MEDIA"
	   FROM VENDEDORES;
	   
/* A33 - ALTERANDO TABELAS */

CREATE TABLE TABELA(
	COLUNA1 VARCHAR(30),
	COLUNA2 VARCHAR(30),
	COLUNA3 VARCHAR(30)
);

CREATE TABLE TABELA(
	COLUNA1 INT PRIMARY KEY AUTO_INCREMENT
);

--ADICIONANDO UMA PK
ALTER TABLE TABELA 
ADD PRIMARY KEY (COLUNA1);

--ADICIONANDO COLUNA SEM POSICAO. ULTIMA POSICAO
ALTER TABLE TABELA 
ADD COLUNA varchar(30);

ALTER TABLE TABELA 
ADD COLUNA100 INT;

--ADICIONANDO UMA COLUNA COM POSICAO
ALTER TABLE TABELA 
ADD COLUMN COLUNA4 VARCHAR(30) NOT NULL UNIQUE
AFTER COLUNA3;

--MODIFICANDO O TIPO DE UM CAMPO
ALTER TABLE TABELA
 MODIFY COLUNA2 DATE NOT NULL;

--RENOMEANDO O NOME DA TABELA
ALTER TABLE TABELA 
RENAME PESSOA;

CREATE TABLE TIME(
	IDTIME INT PRIMARY KEY AUTO_INCREMENT,
	TIME VARCHAR(30),
	ID_PESSOA VARCHAR(30)
);

--Foreign key
ALTER TABLE TIME 
ADD FOREIGN KEY(ID_PESSOA)
REFERENCES PESSOA(COLUNA1);

/* VERIFICAR AS CHAVES */
SHOW CREATE TABLE TIME;

/* A34 - ORGANIZACAO DE CHAVES - CONSTRAINT (REGRA) */

CREATE TABLE JOGADOR(
	IDJOGADOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30)
);

CREATE TABLE TIMES(
	IDTIME INT PRIMARY KEY AUTO_INCREMENT,
	NOMETIME VARCHAR(30),
	ID_JOGADOR INT,
	FOREIGN KEY(ID_JOGADOR)
	REFERENCES JOGADOR(IDJOGADOR)
);

INSERT INTO JOGADOR VALUES(NULL,'GUERRERO');
INSERT INTO TIMES VALUES(NULL,'FLAMENGO',1);

SHOW CREATE TABLE JOGADOR;
SHOW CREATE TABLE TIMES;

/* A35 - ORGANIZANDO CHAVES
 */

SHOW TABLES;

DROP TABLE ENDERECO;
DROP TABLE TELEFONE;
DROP TABLE CLIENTE;

CREATE TABLE CLIENTE(
	IDCLIENTE INT,
	NOME VARCHAR(30) NOT NULL
);

CREATE TABLE TELEFONE(
	IDTELEFONE INT,
	TIPO CHAR(3) NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	ID_CLIENTE INT
);

ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE
PRIMARY KEY(IDCLIENTE);

ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEFONE
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE);

SHOW CREATE TABLE TELEFONE;

/* DICIONARIO DE DADOS */

SHOW DATABASES;

USE INFORMATION_SCHEMA;

STATUS

SHOW TABLES;

DESC TABLE_CONSTRAINTS;

SELECT CONSTRAINT_SCHEMA AS "BANCO",
	   TABLE_NAME AS "TABELA",
	   CONSTRAINT_NAME AS "NOME REGRA",
	   CONSTRAINT_TYPE AS "TIPO"
	   FROM TABLE_CONSTRAINTS
	   WHERE CONSTRAINT_SCHEMA = 'COMERCIO';

/* APAGANDO CONSTRAINTS */

USE COMERCIO;

ALTER TABLE TELEFONE
DROP FOREIGN KEY FK_CLIENTE_TELEFONE;

ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEFONE
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE);

/*36 E ACOES DE CONSTRAINTS */

SHOW TABLES;

INSERT INTO CLIENTE VALUES(1,'RICARDO');
INSERT INTO CLIENTE VALUES(2,'CLARA');
INSERT INTO CLIENTE VALUES(3,'JULIO');
INSERT INTO CLIENTE VALUES(4,'ANA');

INSERT INTO TELEFONE VALUES(10,'CEL','37834334',2);
INSERT INTO TELEFONE VALUES(20,'RES','67465656',2);
INSERT INTO TELEFONE VALUES(30,'CEL','88665645',1);
INSERT INTO TELEFONE VALUES(40,'RES','77543546',3);
INSERT INTO TELEFONE VALUES(50,'COM','75454675',1);
INSERT INTO TELEFONE VALUES(60,'CEL','76765455',4);

SELECT NOME, TIPO, NUMERO
FROM CLIENTE
INNER JOIN TELEFONE
ON IDCLIENTE = ID_CLIENTE;

/*ERRO DE REFERENCIA */
DELETE FROM CLIENTE WHERE IDCLIENTE = 1;

/*CORRIGIR ERRO*/
DELETE FROM TELEFONE
WHERE ID_CLIENTE = 1;
DELETE FROM CLIENTE WHERE IDCLIENTE = 1;

/* APAGANDO A FOREIGN KEY */

ALTER TABLE TELEFONE DROP FOREIGN KEY FK_CLIENTE_TELEFONE;

/*RECRIANDO A FK */

ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEFONE
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE)
ON DELETE CASCADE;

SELECT NOME, TIPO, NUMERO
FROM CLIENTE
INNER JOIN TELEFONE
ON IDCLIENTE = ID_CLIENTE;

DELETE FROM CLIENTE WHERE IDCLIENTE = 2;

ALTER TABLE TELEFONE DROP FOREIGN KEY FK_CLIENTE_TELEFONE;

ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEFONE
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE)
ON DELETE SET NULL;

SELECT NOME, TIPO, NUMERO
FROM CLIENTE
INNER JOIN TELEFONE
ON IDCLIENTE = ID_CLIENTE;

SELECT * FROM CLIENTE;

DELETE FROM CLIENTE WHERE IDCLIENTE = 3;

SELECT * FROM TELEFONE;

/* SET NULL - DELETE CASCADE */

/*A37 CORRECAO EX 01 */

CREATE DATABASE PROJETO;

USE PROJETO;

/* A38 MODELO FISICO */

CREATE DATABASE OFICINA;

USE OFICINA;

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	SEXO ENUM('M','F') NOT NULL,
	ID_CARRO INT UNIQUE
);

CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('CEL','RES','COM') NOT NULL,
	NUMERO VARCHAR(30) NOT NULL,
	ID_CLIENTE INT 
);

CREATE TABLE MARCA(
	IDMARCA INT PRIMARY KEY AUTO_INCREMENT,
	MARCA VARCHAR(30) UNIQUE
);

CREATE TABLE CARRO(
	IDCARRO INT PRIMARY KEY AUTO_INCREMENT,
	MODELO VARCHAR(30) NOT NULL,
	PLACA VARCHAR(30) NOT NULL UNIQUE,
	ID_MARCA INT
);

CREATE TABLE COR(
	IDCOR INT PRIMARY KEY AUTO_INCREMENT,
	COR VARCHAR(30) UNIQUE
);

CREATE TABLE CARRO_COR(
	ID_CARRO INT,
	ID_COR INT,
	PRIMARY KEY(ID_CARRO,ID_COR)
);

/* CONSTRAINTS */

ALTER TABLE TELEFONE 
ADD CONSTRAINT FK_TELEFONE_CLIENTE
FOREIGN KEY(ID_CLIENTE)
REFERENCES CLIENTE(IDCLIENTE);


ALTER TABLE CLIENTE
ADD CONSTRAINT FK_CLIENTE_CARRO
FOREIGN KEY(ID_CARRO)
REFERENCES CARRO(IDCARRO);


ALTER TABLE CARRO
ADD CONSTRAINT FK_CARRO_MARCA
FOREIGN KEY(ID_MARCA)
REFERENCES MARCA(IDMARCA);


ALTER TABLE CARRO_COR
ADD CONSTRAINT FK_COR
FOREIGN KEY(ID_COR)
REFERENCES COR(IDCOR);


ALTER TABLE CARRO_COR
ADD CONSTRAINT FK_CARRO
FOREIGN KEY(ID_CARRO)
REFERENCES CARRO(IDCARRO);

/* PREENCHER O BANCO COM NO MINIMO 10 CLIENTES */

INSERT INTO CARRO VALUES(NULL,'')

/* A 39 ENTENDENDO TRIGGERS */

/* ESTRUTURA DE UMA TRIGGER */

CREATE TRIGGER NOME
BEFORE/AFTER INSERT/DELETE/UPDATE ON TABELA
FOR EACH ROW (PARA CADA LINHA)
BEGIN -> INICIO

		QUALQUER COMANDO SQL

END -> FIM

CREATE DATABASE AULA40;

USE AULA40;

CREATE TABLE USUARIO(
	IDUSUARIO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	LOGIN VARCHAR(30),
	SENHA VARCHAR(100)
);

CREATE TABLE BKP_USUARIO(
	IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
	IDUSUARIO INT,
	NOME VARCHAR(30),
	LOGIN VARCHAR(30)
);

/* CRIANDO A TRIGGER */

DELIMITER $

CREATE TRIGGER BACKUP_USER
BEFORE DELETE ON USUARIO
FOR EACH ROW 
BEGIN
		
	INSERT INTO BKP_USUARIO VALUES
	(NULL,OLD.IDUSUARIO,OLD.NOME,OLD.LOGIN);
END
$

INSERT INTO USUARIO VALUES(NULL,'ANDRADE','ANDRADE2009','HEXACAMPEAO');

SELECT * FROM USUARIO;

DELETE FROM USUARIO WHERE IDUSUARIO = 1;

/* A 41 - COMUNICACAO ENTRE BANCOS */

CREATE DATABASE LOJA;

USE LOJA;

CREATE TABLE PRODUTO(
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	VALOR FLOAT(10,2)
);

STATUS

CREATE DATABASE BACKUP;

USE BACKUP;

CREATE TABLE BKP_PRODUTO(
	IDBKP INT PRIMARY KEY AUTO_INCREMENT,
	IDPRODUTO INT,
	NOME VARCHAR(30),
	VALOR FLOAT(10,2)
);

USE LOJA;

STATUS

INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,1000,'TESTE',0.0);

SELECT * FROM BACKUP.BKP_PRODUTO;

DELIMITER $

CREATE TRIGGER BACKUP_PRODUT
BEFORE INSERT ON PRODUTO
FOR EACH ROW
BEGIN
	
	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,NEW.IDPRODUTO,
	NEW.NOME,NEW.VALOR);

END
$

DELIMITER ;

INSERT INTO PRODUTO VALUES(NULL,'LIVRO MODELAGEM',50.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO BI',80.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO ORACLE',70.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO SQL SERVER',100.00);

SELECT * FROM PRODUTO;

SELECT * FROM BACKUP.BKP_PRODUTO;

DELIMITER $

CREATE TRIGGER BACKUP_PRODUTO_DEL
BEFORE DELETE ON PRODUTO
FOR EACH ROW
BEGIN
	
	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,OLD.IDPRODUTO,
	OLD.NOME,OLD.VALOR);

END
$

DELIMITER ;

DELETE FROM PRODUTO WHERE IDPRODUTO = 2;

DROP TRIGGER BACKUP_PRODUT;

DELIMITER $

CREATE TRIGGER BACKUP_PRODUTO
AFTER INSERT ON PRODUTO
FOR EACH ROW
BEGIN
	
	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,NEW.IDPRODUTO,
	NEW.NOME,NEW.VALOR);

END
$

DELIMITER ;

INSERT INTO PRODUTO VALUES(NULL,'LIVRO C#',100.00);


SELECT * FROM PRODUTO;
SELECT * FROM BACKUP.BKP_PRODUTO;

ALTER TABLE BACKUP.BKP_PRODUTO
ADD EVENTO CHAR(1);

DROP TRIGGER BACKUP_PRODUTO_DEL;

DELIMITER $

CREATE TRIGGER BACKUP_PRODUTO_DEL
BEFORE DELETE ON PRODUTO
FOR EACH ROW
BEGIN
	
	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,OLD.IDPRODUTO,
	OLD.NOME,OLD.VALOR,'D');

END
$

DELIMITER ;

DELETE FROM PRODUTO WHERE IDPRODUTO = 4;

SELECT * FROM BACKUP.BKP_PRODUTO;

/* A 43 - TRIGGER DE AUDITORIA */

DELIMITER ;

DROP DATABASE LOJA;

DROP DATABASE BACKUP;

CREATE DATABASE LOJA;

USE LOJA;

CREATE TABLE PRODUTO(
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	VALOR FLOAT(10,2)
);

INSERT INTO PRODUTO VALUES(NULL,'LIVRO MODELAGEM',50.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO BI',80.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO ORACLE',70.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO SQL SERVER',100.00);

/*QUANDO*/
SELECT NOW();
/*QUEM*/
SELECT CURRENT_USER();

CREATE DATABASE BACKUP;

USE BACKUP;

CREATE TABLE BKP_PRODUTO(
	IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
	IDPRODUTO INT,
	NOME VARCHAR(30),
	VALOR_ORIGINAL FLOAT(10,2),
	VALOR_ALTERADO FLOAT(10,2),
	DATA DATETIME,
	USUARIO VARCHAR(30),
	EVENTO CHAR(1)
	
);

USE LOJA;

SELECT * FROM PRODUTO;

DELIMITER $

CREATE TRIGGER AUDIT_PROD
AFTER UPDATE ON PRODUTO
FOR EACH ROW
BEGIN

	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,OLD.IDPRODUTO,OLD.NOME,
	OLD.VALOR,NEW.VALOR,NOW(),CURRENT_USER(),'U');
	
END
$

DELIMITER ;

UPDATE PRODUTO SET VALOR = 110.00
WHERE IDPRODUTO = 4;

SELECT * FROM PRODUTO;

SELECT * FROM BACKUP.BKP_PRODUTO;

/* A44 - AUTORELACIONAMENTO */


CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	HORAS INT,
	VALOR FLOAT(10,2),
	ID_PREREQ INT
);

ALTER TABLE CURSOS ADD CONSTRAINT FK_PREREQ
FOREIGN KEY(ID_PREREQ) REFERENCES CURSOS(IDCURSO);

INSERT INTO CURSOS VALUES(NULL,'BD RELACIONAL',20,400.00,NULL);
INSERT INTO CURSOS VALUES(NULL,'BUSINESS INTELLIGENCE',40,800.00,1);
INSERT INTO CURSOS VALUES(NULL,'RELATORIOS AVANCADOS',20,600.00,2);
INSERT INTO CURSOS VALUES(NULL,'LOGICA PROGRAM',20,400.00,NULL);
INSERT INTO CURSOS VALUES(NULL,'RUBY',30,500.00,4);

SELECT * FROM CURSOS;

SELECT NOME, VALOR, HORAS, IFNULL(ID_PREREQ,"SEM REQ") REQUISITO
FROM CURSOS;

/* NOME, VALOR, HORAS E O NOME DO PRE REQUISITO DO CURSO */

SELECT 
C.NOME AS CURSO, 
C.VALOR AS VALOR, 
C.HORAS AS CARGA, 
IFNULL(P.NOME, "---") AS PREREQ
FROM CURSOS C LEFT JOIN CURSOS P
ON P.IDCURSO = C.ID_PREREQ;

/* A 45 - CURSORES */

CREATE DATABASE CURSORES;
USE CURSORES;

CREATE TABLE VENDEDORES(
	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(50),
	JAN INT,
	FEV INT,
	MAR INT
);

INSERT INTO VENDEDORES VALUES(NULL,'MAFRA',32432,242334,574545);
INSERT INTO VENDEDORES VALUES(NULL,'CLARA',65465,65443,653454);
INSERT INTO VENDEDORES VALUES(NULL,'JOAO',12432,65356,8756);
INSERT INTO VENDEDORES VALUES(NULL,'LILIAN',4567,9676,8765);
INSERT INTO VENDEDORES VALUES(NULL,'ANTONIO',3467,68756,99765);
INSERT INTO VENDEDORES VALUES(NULL,'GLORIA',54786,76889,7098);

SELECT * FROM VENDEDORES;

SELECT NOME, (JAN+FEV+MAR) AS TOTAL FROM VENDEDORES;
SELECT NOME, (JAN+FEV+MAR) AS TOTAL, (JAN+FEV+MAR)/3 AS MEDIA FROM VENDEDORES;

CREATE TABLE VEND_TOTAL(
	NOME VARCHAR(50),
	JAN INT,
	FEV INT,
	MAR INT,
	TOTAL INT,
	MEDIA INT
);

DELIMITER $

CREATE PROCEDURE INSEREDADOS()
BEGIN
		DECLARE FIM INT DEFAULT 0;
		DECLARE VAR1, VAR2, VAR3, VTOTAL, VMEDIA INT;
		DECLARE VNOME VARCHAR(50);
		
		DECLARE REG CURSOR FOR(
			SELECT NOME, JAN, FEV, MAR FROM VENDEDORES
		);
		
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET FIM = 1;
		
		OPEN REG;
		
		REPEAT
		
			FETCH REG INTO VNOME, VAR1, VAR2, VAR3;
			IF NOT FIM THEN
			
				SET VTOTAL = VAR1 + VAR2 + VAR3;
				SET VMEDIA = VTOTAL / 3;
				
				INSERT INTO VEND_TOTAL VALUES(VNOME,VAR1,VAR2,VAR3,VTOTAL,VMEDIA);
				
			END IF;
			
		UNTIL FIM END REPEAT;
		
		CLOSE REG;
END
$

SELECT * FROM VENDEDORES;
SELECT * FROM VEND_TOTAL;

DELIMITER ;

CALL INSEREDADOS();

INSERT INTO VENDEDORES VALUES(NULL,'LETICIA',656,3546,234545);
INSERT INTO VENDEDORES VALUES(NULL,'CELIA',6766,56556,65454);

SELECT * FROM VENDEDORES;
SELECT * FROM VEND_TOTAL;

DELETE FROM VEND_TOTAL;

CALL INSEREDADOS();

/* A 46 TRIGGERS COM VARIAVEIS */

DELIMITER $

CREATE TRIGGER CADTOTAL
BEFORE INSERT ON VENDEDORES
FOR EACH ROW
BEGIN
		DECLARE VTOTAL, VMEDIA INT;
		
		SET VTOTAL := NEW.JAN + NEW.FEV + NEW.MAR;
		SET VMEDIA := (NEW.JAN + NEW.FEV + NEW.MAR)/3;
		
		INSERT INTO VEND_TOTAL VALUES(NEW.NOME,NEW.JAN,NEW.FEV,NEW.MAR,VTOTAL,VMEDIA);

END
$

DELIMITER ;

INSERT INTO VENDEDORES VALUES(NULL,'JULIO',9999,9999,9999);
						  
SELECT * FROM VENDEDORES;
SELECT * FROM VEND_TOTAL;

/* A47 SEGUNDA E TERCEIRAS FORMAS NORMAIS */

/*
	 PRIMEIRA FN
	 
	 ATOMICIDADE - UM CAMPO NAO PODE SER DIVISIVEL
	 UM CAMPO NAO PODE SER VETORIZADO
	 PK CHAVE PRIMARIA

*/

CREATE DATABASE CONSULTORIO;

CREATE TABLE PACIENTE(
	IDPACIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	NASCIMENTO DATE
);

CREATE TABLE MEDICO(
	IDMEDICO INT PRIMARY KEY IDENTITY,
	NOME VARCHAR(30),
	SEXO CAHR(1),
	ESPECIALIDADE VARCHAR(30),
	FUNCIONARIO ENUM('S','N')
);

CREATE TABLE HOSPITAL(
	IDHOSPITAL INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	BAIRRO VARCHAR(30),
	CIDADE VARCHAR(30),
	ESTADO CHAR(2)
);

CREATE TABLE CONSULTA(
	IDCONSULTA INT PRIMARY KEY AUTO_INCREMENT,
	ID_PACIENTE INT,
	ID_MEDICO INT,
	ID_HOSPITAL INT,
	DATA DATETIME,
	DIAGNOSTICO VARCHAR(50)
);

CREATE TABLE INTERNACAO(
	IDINTERNACAO INT PRIMARY KEY AUTO_INCREMENT,
	ENTRADA DATETIME,
	QUARTO INT,
	SAIDA DATETIME,
	OBSERVACOES VARCHAR(50),
	ID_CONSULTA INT UNIQUE	
);  

