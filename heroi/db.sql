-- create tables
create table universo (
	id int unsigned not null auto_increment,
    universo varchar(200) not null,
    empresa enum('Marvel Comics', 'DC Comics', 'Outros') not null,
    primary key (id),
    unique(universo)
);

create table heroi (
	id int unsigned not null auto_increment,
    nome varchar(100) not null,
    idade int not null,
    empresa_id int not null,
    primary key (id)
);

-- insert universo
insert into universo 
	(universo, empresa)
values
	('Universo Estendido DC', 'DC Comics');

insert into universo 
	(universo, empresa)
values 
	('Universo Cinematográfico Marvel', 'Marvel Comics');

-- user insert
insert into heroi
	(nome, idade, empresa_id)
values
	('Matheus Henrique da Silva', 20, (select id from universo where empresa = 'DC Comics'));
    
insert into heroi
	(nome, idade, empresa_id)
values
	('Peter Parker', 17, (select id from universo where empresa = 'Marvel Comics'));

-- update user
update heroi
set nome = 'Bruce Wayne'
where nome = 'Matheus Henrique da Silva';

-- Consultar com Agregação
select 
	nome as 'Herói',
	universo as 'Universo'
from heroi inner join universo on heroi.empresa_id = universo.id;

-- select
select * from universo;
select * from heroi
