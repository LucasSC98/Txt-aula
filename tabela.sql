create table cenas(
id_cena int not null primary key,
nome_cena varchar(100),
descricao varchar(400)
);

create table itens(
id_item int not null primary key,
nome_item varchar(100),
descricao varchar(200),
descricao_neg varchar(200),
quantidade int,
foreign key (id_item) references cenas (id_cena),
foreign key (id_item) references locais (id_local)
);


create table acoes (
id_acao int not null primary key,
nome_acao varchar (100),
descricao_acao varchar(200),
combinar varchar(100),
foreign key (id_acao) references cenas (id_cena)
);

create table iventario (
id_item int not null primary key,
nome varchar(30),
quantidade int,
foreign key(id_item) references itens (id_item)
);

create table locais (
id_local int not null primary key,
nome_local varchar(30),
foreign key (id_local) references cenas (id_cena)
);
