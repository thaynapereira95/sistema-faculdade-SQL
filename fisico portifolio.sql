create database db_faculdade;
use db_faculdade;

create table alunos(
id_aluno int primary key auto_increment,
nome varchar(100),
matricula varchar(20) unique,
data_nascimento date,
curso varchar(100)
);

create table cursos(
id_curso int primary key auto_increment,
nome_curso varchar(100),
duracao int,
codigo_curso varchar(20) unique
);

create table materias (
id_materia int primary key auto_increment,
nome_materia varchar(100),
codigo_materia varchar(20)unique,
carga_horaria int,
id_curso int,
foreign key(id_curso) references cursos(id_curso)
);

create table professores(
id_professor int primary key auto_increment,
nome_professor varchar(50),
matricula_professor varchar(20) unique

);

create table notas(
id_nota int primary key auto_increment,
id_aluno int,
id_materia int,
nota decimal(5,2),
foreign key (id_aluno) references alunos(id_aluno),
foreign key (id_materia) references materias (id_materia)
);

create table turmas(
id_turma int primary key auto_increment,
id_curso int,
id_materia int,
id_professor int,
foreign key (id_curso) references cursos (id_curso),
foreign key (id_materia) references materias (id_materia),
foreign key (id_professor) references professores (id_professor)
);

show tables;