#ATIV PRINCIPAL
create table startup (
id_startup int not null,
nome_startup varchar(20) not null,
cidade_sede varchar(20) not null,
primary key (id_startup));

create table programador (
id_programador int not null,
id_startup int not null,
nome_programador varchar(30) not null,
genero char(1) not null,
data_nascimento date not null,
email varchar(40) not null unique,
primary key (id_programador),
foreign key (id_startup) references startup(id_startup));

create table linguagem_programacao (
id_linguagem int not null,
nome_linguagem varchar(15) not null,
ano_lancamento int not null,
primary key (id_linguagem));

create table programador_linguagem(
id_programador int not null,
id_linguagem int not null,
foreign key (id_programador) references programador(id_programador),
foreign key (id_linguagem) references linguagem_programacao(id_linguagem));

INSERT INTO startup values('10001', 'Tech4Toy', 'Porto Alegre'), 
('10002', 'Smart123', 'Belo Horizonte'), ('10003', 'knowledgeUp', 'Rio de Janeiro'), 
('10004', 'BSI Next Level', 'Recife'), ('10005', 'QualiHealth', 'São Paulo'), 
('10006', 'ProEdu', 'Florianópolis');

INSERT INTO programador values ('30001', '10001', 'João Pedro', 'M', '1993-06-23', 'joaop@mail.com'), 
('30002', '10002', 'Paula Silva', 'F', '1986-01-10', 'paulas@mail.com'), 
('30003', '10003', 'Renata Vieira', 'F', '1991-07-05', 'renatav@mail.com'), 
('30004', '10004', 'Felipe Santos', 'M', '1976-11-25', 'felipes@mail.com'), 
('30005', '10001', 'Ana Cristina', 'F', '1968-02-19', 'anac@mail.com'), 
('30006', '10004', 'Alexandre Alves', 'M', '1988-07-07', 'alexandrea@mail.com'), 
('30007', '10002', 'Laura Marques', 'F', '1987-10-04', 'lauram@mail.com');

INSERT INTO linguagem_programacao values ('20001', 'Python', '1991'), ('20002', 'PHP', '1995'), 
('20003', 'Java', '1995'), ('20004', 'C', '1972'), ('20005', 'JavaScript', '1995'), ('20006', 'Dart', '2011');

INSERT INTO programador_linguagem values ('30001', '20001'), ('30001', '20002'), ('30002', '20003'), 
('30003', '20004'), ('30003', '20005'), ('30004', '20005'), ('30007', '20001'), ('30007', '20002');
