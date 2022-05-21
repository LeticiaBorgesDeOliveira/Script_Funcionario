/* Praticando Selects */

-- Este select trás os funcionarios que trabalham no departamento de filmes ou no departamento de roupas
select * from funcionarios
where departamento = 'Roupas'
or
departamento = 'Filmes';

-- Este select usa o count para contar quantos funcionarios estão em cada departamento
SELECT COUNT(*), departamento
FROM FUNCIONARIOS
group by departamento;

-- Este select usa o count para contar quantos funcionarios estão em cada departamento e
-- usa o order by para ordenar pelo departamento que tem menos pessoas para o mais populado.

SELECT COUNT(*), departamento
FROM FUNCIONARIOS
group by departamento
order by 1;

-- Este select conta quantos funcionarios possuem o sexo feminino e quantos possuem o sexo masculino 
-- agrupado por sexo.

--Feminino 491 ocorrencias
--Masculino 484 ocorrencias

select count(*), sexo
from funcionarios
group by sexo;

-- Este select conta quantos funcionarios possui em cada departamento 
select count(*), departamento
from funcionarios
group by departamento;

-- Este select mostra todas as funcionarias que trabalham no departamento lar ou filmes
SELECT * FROM FUNCIONARIOS
WHERE
( DEPARTAMENTO = 'Lar' AND SEXO = 'Feminino' )
OR
( DEPARTAMENTO = 'Filmes' AND SEXO = 'Feminino' );

-- Este select tras todos os funcionarios que são do sexo masculino ou que trabalham no setor 
-- jardim.
SELECT * FROM FUNCIONARIOS
WHERE
SEXO = 'Masculino' OR
DEPARTAMENTO = 'Jardim';
