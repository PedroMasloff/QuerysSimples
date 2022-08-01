create table departamentos (
    departamento varchar(100),
    divisao varchar(100),
    primary key (departamento)
  );

insert into departamentos values ('Automotivo','Auto & Hardware');
insert into departamentos values ('Bebês','Casa e Afins');
insert into departamentos values ('Beleza','Casa e Afins');
insert into departamentos values ('Roupas','Casa e Afins');
insert into departamentos values ('Computadores','Equipamentos Eletrônicos');
insert into departamentos values ('Eletronicos','Equipamentos Eletrônicos');
insert into departamentos values ('Games','Casa e Afins');
insert into departamentos values ('Jardim','Outdoors & Jardim');
insert into departamentos values ('Alimentícios','Casa e Afins');
insert into departamentos values ('Saúde','Casa e Afins');
insert into departamentos values ('Lar','Casa e Afins');
insert into departamentos values ('Industrial','Auto & Hardware');
insert into departamentos values ('Joalheria','Fashion');
insert into departamentos values ('Crianças','Casa e Afins');
insert into departamentos values ('Filmes','Entretenimento');
insert into departamentos values ('Música','Entretenimento');
insert into departamentos values ('Outdoors','Outdoors & Jardim');
insert into departamentos values ('Calçados','Casa e Afins');
insert into departamentos values ('Esporte','Games & Esporte');
insert into departamentos values ('Ferramentas','Auto & Hardware');
insert into departamentos values ('Brinquedos','Games & Esporte');


create table localizacao (
   idRegiao int,
   localizacao varchar(20),
   pais varchar(20),
   primary key (idRegiao)
  );

insert into localizacao values (1, 'Nordeste', 'Brasil');
insert into localizacao values (2, 'Sudeste', 'Brasil');
insert into localizacao values (3, 'Sul', 'Brasil');
insert into localizacao values (4, 'Norte', 'Brasil');
insert into localizacao values (5, 'British Columbia', 'Canada');
insert into localizacao values (6, 'Quebec', 'Canada');
insert into localizacao values (7, 'Nova Scotia', 'Canada');


create table funcionarios
  (
      idFuncionario integer,
      nome varchar(100),
      email varchar(200),
      sexo varchar(10),
      departamento varchar(100),
      admissao date,
      salario integer,
      cargo varchar(100),
      idRegiao int,
      primary key (idFuncionario)
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
insert into funcionarios values (10,'Sanchez','rsanchez9@cloudflare.com','Masculino','Filmes','3/13/2013',108093,'Sales Representative',1);
insert into funcionarios values (11,'Jacobs','jjacobsa@sbwire.com','Feminino','Joalheria','11/27/2003',121966,'Community Outreach Specialist',7);
insert into funcionarios values (12,'Black','mblackb@edublogs.org','Masculino','Roupas','2/4/2003',44179,'Data Coordiator',7);
insert into funcionarios values (13,'Schmidt','sschmidtc@state.gov','Masculino','Bebês','10/13/2002',85227,'Compensation Analyst',3);
insert into funcionarios values (14,'Webb','awebbd@baidu.com','Feminino','Computadores','10/22/2006',59763,'Software Test Engineer III',4);
insert into funcionarios values (15,'Jacobs','ajacobse@google.it','Feminino','Games','3/4/2007',141139,'Community Outreach Specialist',7);
insert into funcionarios values (16,'Medina','smedinaf@amazonaws.com','Feminino','Bebês','3/14/2008',106659,'Web Developer III',1);
insert into funcionarios values (17,'Morgan','dmorgang@123-reg.co.uk','Feminino','Crianças','5/4/2011',148952,'Programmer IV',6);
insert into funcionarios values (18,'Nguyen','jnguyenh@google.com','Masculino','Lar','11/3/2014',93804,'Geologist II',5);
insert into funcionarios values (19,'Day','rdayi@chronoengine.com','Masculino','Eletronicos','9/22/2004',109890,'VP Sales',3);
insert into funcionarios values (20,'Carr','dcarrj@ocn.ne.jp','Feminino','Filmes','11/22/2007',115274,'VP Quality Control',5);
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
insert into funcionarios values (33,'Greene','wgreenew@blogspot.com','Masculino','Filmes','3/21/2000',87057,'Assistant Manager',1);
insert into funcionarios values (34,'Reed','areedx@cisco.com','Masculino','Filmes','11/28/2002',120579,'Assistant Media Planner',6);
insert into funcionarios values (35,'Smith','bsmithy@statcounter.com','Feminino','Books','6/13/2013',94884,'Librarian',7);
insert into funcionarios values (36,'Bradley','nbradleyz@goodreads.com','Masculino','Outdoors','12/28/2008',107222,'Payment Adjustment Coordinator',3);
insert into funcionarios values (37,'Cruz','rcruz10@blinklist.com','Feminino','Lar','5/20/2000',61739,'Quality Engineer',1);
insert into funcionarios values (38,'Williamson','dwilliamson11@rediff.com','Feminino','Jardim','1/25/2012',82026,'Nurse',2);
insert into funcionarios values (39,'Kennedy','skennedy12@rediff.com','Masculino','Bebês','7/2/2011',79339,'Civil Engineer',1);
insert into funcionarios values (40,'Hawkins','phawkins13@twitpic.com','Feminino','Roupas','8/20/2011',76809,'Quality Engineer',6);
insert into funcionarios values (41,'Allen','jallen14@ustream.tv','Feminino','Bebês','5/10/2001',89680,'Web Developer III',6);
insert into funcionarios values (42,'Watkins','mwatkins15@wiley.com','Masculino','Computadores','4/1/2008',125668,'Executive Secretary',7);
insert into funcionarios values (43,'Ferguson','mferguson16@qq.com','Masculino','Esporte','5/29/2009',82960,'Account Representative III',6);
insert into funcionarios values (44,'Simmons','asimmons17@csmonitor.com','Masculino','Filmes','12/21/2013',113857,'Developer III',2);
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
