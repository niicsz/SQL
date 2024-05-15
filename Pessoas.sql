use Pessoas;
create table if not exists Pessoas(
id_pessoa int auto_increment primary key,
nome varchar(100) not null, telefone varchar(100) not null, email varchar(100)
);
	insert into Pessoas (Nome, telefone, email)
values ('nic', '119999999', 'teste@gmail.com');
create table if not exists Cachorro(
id_cachorrro int primary key auto_increment,
nome varchar(100) not null,
id_pessoa int,
constraint fk_pessoacachorro foreign key (id_pessoa) references pessoas(id_pessoa)
);
insert into Cachorro (Nome, id_pessoa)
values ('thor', '2');
select pessoa.nome, cachorro.nome from pessoa inner join cachorro
on pessoas.id_pessoa = cachorro.id_pessoa;
