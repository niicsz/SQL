use Pessoas;
create table if not exists Pessoas(
id_pessoa int auto_increment primary key,
nome varchar(100) not null, telefone varchar(100) not null, email varchar(100)
);
	insert into Pessoas (Nome, telefone, email)
values ('nic', '119999999', 'teste@gmail.com');
