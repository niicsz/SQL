create database if not exists universidade;
use universidade;
create table if not exists aluno(
id_aluno int auto_increment primary key,
nome_aluno varchar(100) not null,
telefone bigint not null,
altura decimal(3,2)
) ;

create table if not exists professor(
id_profesor int auto_increment primary key,
nome_professor varchar(100) not null,
telefone bigint not null,
altura decimal(3,2),
id_aluno int,
constraint fk_AlunoProfessor foreign key (id_aluno) references aluno (id_aluno)
) ;
alter table aluno add column nacionalidade varchar(30) not null;
