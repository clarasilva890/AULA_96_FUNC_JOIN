create database senai_tech;

use senai_tech;

create table departamentos(
   id int,
   nome varchar(60),
   primary key(id)

);
create table funcionarios (
   id int,
   nome varchar(60),
   sobrenome varchar(60),
   salario decimal(10,2),
   id_departamento int,
   primary key(id),
   foreign key(id_departamento)
   references departamentos(id)
   
);

select * from funcionarios;

select f.nome, f.sobrenome, d.nome as nome_departamento
from funcionarios f
inner join departamentos d
on f.id_departamento = d.id;

select f.nome, f.sobrenome, d.nome as nome_departamento
from funcionarios f
inner join departamentos d
on f.id_departamento = d.id
where d.nome = 'TI';

select f.nome, f.sobrenome, d.nome as nome_departamento
from funcionarios f
inner join departamentos d
on f.id_departamento = d.id
where d.nome = 'TI'
order by f.nome;

select f.nome, f.sobrenome, d.nome as nome_departamento
from funcionarios f
inner join departamentos d
on f.id_departamento = d.id
where d.nome = 'TI' and f.salario > 5000
order by f.nome;

select d.nome, avg(f.salario) as media_salarial
from funcionarios f
inner join departamentos d on f.id_departamento = d.id
group by d.id;

select concat(f.nome, ' ', f.sobrenome) as nome_completo
from funcionarios f
inner join departamentos d on f.id_departamento = d.id
where d.nome = 'TI';

select d.nome, sum(f.salario) as soma_salarial
from funcionarios f
inner join departamentos d on f.id_departamento =d.id
where d.nome ='recursos humanos';

select count(*) as numer_funcionarios
from funcionarios f
inner join departamentos d on f.id_departamento =d.id
group by d.id;

select nome,sobrenome,salario
from funcionarios
where salario > 7000
order by nome;

select d.nome, avg(f.salario) as media_salarial
from funcionarios f
inner join departamentos d on f.id_departamento = d.id 
group by d.id;

select concat(f.nome,' ',f.sobrenome)nome_completo, d.nome
from funcionarios f
inner join departamentos d on f.id_departamento = d.id
where f.sobrenome = 'matisse';
