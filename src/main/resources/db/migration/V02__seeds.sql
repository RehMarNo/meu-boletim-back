INSERT INTO pessoa (id, nome, genero, datanasc, cep, rua, numero, bairro, cidade, uf, telefone, email, login, senha, tipo_pessoa, ativo)
VALUES ('7aebf482-ca5f-11ec-92b4-60a44cadad4e'::UUID,'heloisa ferreira','FEMININO','1982-05-03','88061789','def',150,'velha','qualquer','sp','999994444','helo@gmail.com','helo','123','RESPONSAVEL',TRUE),
       ('7aebf483-ca5f-11ec-92b5-60a44cadad4e'::UUID,'carlos oliveira','MASCULINO','1983-08-10','89054789','ghe',65,'ribeirao','qualquer','sp','999993333','carlos@gmail.com','carlos','123','RESPONSAVEL',TRUE);

INSERT INTO pessoa (id, nome, genero, datanasc, cep, rua, numero, bairro, cidade, uf, telefone, email, login, senha, tipo_pessoa, ativo)
VALUES ('7aea7e18-ca5f-11ec-92b2-60a44cadad4e'::UUID,'ana silva','FEMININO','1980-01-05','89054789','ghe',500,'ribeirao','qualquer','sp','999996666','ana@gmail.com','ana','123','RESPONSAVEL',TRUE),
       ('32077fa6-ca60-11ec-92b7-60a44cadad4e'::UUID,'luisa mendes','FEMININO','1980-01-30','88061789','def',600,'velha','qualquer','sp','999992222','luisa@gmail.com','luisa','123','PROFESSOR',TRUE),
       ('3207f4b8-ca60-11ec-92b8-60a44cadad4e'::UUID,'raul francisco','MASCULINO','1985-12-05','89050333','abc',17,'flores','qualquer','sp','999991111','raul@gmail.com','raul','123','PROFESSOR',TRUE),
       ('e6e117e8-c9b6-11ec-abf9-60a44cadad4e'::UUID,'sabrina alves','FEMININO','1967-06-01','89050333','abc',1,'flores','qualquer','sp','999998888','sabrina@gmail.com','sab','123','SECRETARIA',TRUE),
       ('2c2149b8-c9b7-11ec-abfb-60a44cadad4e'::UUID,'tatiana araujo','FEMININO','1988-01-05','88061789','def',50,'velha','qualquer','sp','999997777','tati@gmail.com','tati','123','SECRETARIA',TRUE),
       ('bf5903ce-ca61-11ec-92b9-60a44cadad4e'::UUID,'daniel camargo','MASCULINO','2015-06-27','89050333','abc',10,'flores','qualquer','sp',NULL,NULL,NULL,NULL,'ALUNO',TRUE),
       ('bf592ad4-ca61-11ec-92ba-60a44cadad4e'::UUID,'gabriel souza','MASCULINO','2016-01-06','89050333','abc',10,'flores','qualquer','sp',NULL,NULL,NULL,NULL,'ALUNO',TRUE),
       ('bf5951e4-ca61-11ec-92bb-60a44cadad4e'::UUID,'joao santos','MASCULINO','2016-03-14','88061789','def',10,'velha','qualquer','sp',NULL,NULL,NULL,NULL,'ALUNO',TRUE),
       ('bf5978ea-ca61-11ec-92bc-60a44cadad4e'::UUID,'bruna almeida','FEMININO','2015-06-01','89054789','ghe',27,'ribeirao','qualquer','sp',NULL,NULL,NULL,NULL,'ALUNO',TRUE),
       ('7aebcd90-ca5f-11ec-92b3-60a44cadad4e'::UUID,'fabiana pereira','FEMININO','1981-06-02','89050333','abc',14,'flores','qualquer','sp','999995555','fabi@gmail.com','fabi','123','RESPONSAVEL',TRUE);

INSERT INTO config_escola (inicio_1bimestre, fim_1bimestre, inicio_2bimestre, fim_2bimestre, inicio_3bimestre, fim_3bimestre, inicio_4bimestre, fim_4bimestre, media_aprovacao, frequencia_aprovacao, id)
VALUES ('2022-01-01','2022-03-31','2022-04-01','2022-06-30','2022-07-01','2022-09-30','2022-10-01','2022-12-31',7.0,75.0,'12db34e6-14ab-4e89-86d2-48387b203b29'::UUID);

INSERT INTO materia (id, nome)
VALUES ('de57bfba-ca64-11ec-92bd-60a44cadad4e'::UUID,'matematica'),
       ('de589746-ca64-11ec-92be-60a44cadad4e'::UUID,'portugues');

INSERT INTO frequencia (id, aluno, materia, data_presenca, presenca)
VALUES ('6c1f04f0-ca67-11ec-92c8-60a44cadad4e'::UUID,'bf5978ea-ca61-11ec-92bc-60a44cadad4e'::UUID,'de57bfba-ca64-11ec-92bd-60a44cadad4e'::UUID,'2022-05-02',TRUE),
       ('7bfec55e-ca67-11ec-92c9-60a44cadad4e'::UUID,'bf5903ce-ca61-11ec-92b9-60a44cadad4e'::UUID,'de57bfba-ca64-11ec-92bd-60a44cadad4e'::UUID,'2022-05-02',FALSE),
       ('a9595762-ca67-11ec-92ca-60a44cadad4e'::UUID,'bf5951e4-ca61-11ec-92bb-60a44cadad4e'::UUID,'de589746-ca64-11ec-92be-60a44cadad4e'::UUID,'2022-05-02',TRUE),
       ('a959a56e-ca67-11ec-92cb-60a44cadad4e'::UUID,'bf592ad4-ca61-11ec-92ba-60a44cadad4e'::UUID,'de589746-ca64-11ec-92be-60a44cadad4e'::UUID,'2022-05-02',TRUE);

INSERT INTO turma (id, nome, ano_letivo, turno, serie)
VALUES ('4d33f73c-ca65-11ec-92bf-60a44cadad4e'::UUID,'b',2022,'VESPERTINO','FUND1'),
       ('05e4b9d8-c9b7-11ec-abfa-60a44cadad4e'::UUID,'a',2022,'MATUTINO','FUND2');

INSERT INTO atividade (id, materia, data_atividade, tipo_atividade, turma)
VALUES ('4afa373c-ca66-11ec-92c2-60a44cadad4e'::UUID,'de57bfba-ca64-11ec-92bd-60a44cadad4e'::UUID,'2022-03-01','PROVA','05e4b9d8-c9b7-11ec-abfa-60a44cadad4e'::UUID),
       ('007040e8-ca67-11ec-92c5-60a44cadad4e'::UUID,'de57bfba-ca64-11ec-92bd-60a44cadad4e'::UUID,'2022-05-06','PROVA','05e4b9d8-c9b7-11ec-abfa-60a44cadad4e'::UUID),
       ('37047c78-ca67-11ec-92c6-60a44cadad4e'::UUID,'de589746-ca64-11ec-92be-60a44cadad4e'::UUID,'2022-03-15','TRABALHO','4d33f73c-ca65-11ec-92bf-60a44cadad4e'::UUID),
       ('3704ca84-ca67-11ec-92c7-60a44cadad4e'::UUID,'de589746-ca64-11ec-92be-60a44cadad4e'::UUID,'2022-05-26','COMPORTAMENTO','4d33f73c-ca65-11ec-92bf-60a44cadad4e'::UUID);

INSERT INTO matricula (id, nome_mae, responsavel, turma, nome_pai)
VALUES ('bf5978ea-ca61-11ec-92bc-60a44cadad4e'::UUID,'ana silva','7aea7e18-ca5f-11ec-92b2-60a44cadad4e'::UUID,'05e4b9d8-c9b7-11ec-abfa-60a44cadad4e'::UUID,NULL),
       ('bf5903ce-ca61-11ec-92b9-60a44cadad4e'::UUID,'joana camargo','7aebf483-ca5f-11ec-92b5-60a44cadad4e'::UUID,'05e4b9d8-c9b7-11ec-abfa-60a44cadad4e'::UUID,NULL),
       ('bf592ad4-ca61-11ec-92ba-60a44cadad4e'::UUID,'fabiana pereira','7aebcd90-ca5f-11ec-92b3-60a44cadad4e'::UUID,'4d33f73c-ca65-11ec-92bf-60a44cadad4e'::UUID,NULL),
       ('bf5951e4-ca61-11ec-92bb-60a44cadad4e'::UUID,'heloisa ferreira','7aebf482-ca5f-11ec-92b4-60a44cadad4e'::UUID,'4d33f73c-ca65-11ec-92bf-60a44cadad4e'::UUID,NULL);

INSERT INTO nota (id, aluno, nota, atividade)
VALUES ('00331e42-ca68-11ec-92cc-60a44cadad4e'::UUID,'bf5978ea-ca61-11ec-92bc-60a44cadad4e'::UUID,5.0,'007040e8-ca67-11ec-92c5-60a44cadad4e'::UUID),
       ('00339368-ca68-11ec-92cd-60a44cadad4e'::UUID,'bf5978ea-ca61-11ec-92bc-60a44cadad4e'::UUID,8.0,'4afa373c-ca66-11ec-92c2-60a44cadad4e'::UUID),
       ('00339369-ca68-11ec-92ce-60a44cadad4e'::UUID,'bf5903ce-ca61-11ec-92b9-60a44cadad4e'::UUID,7.0,'007040e8-ca67-11ec-92c5-60a44cadad4e'::UUID),
       ('0033ba6e-ca68-11ec-92cf-60a44cadad4e'::UUID,'bf5903ce-ca61-11ec-92b9-60a44cadad4e'::UUID,7.0,'4afa373c-ca66-11ec-92c2-60a44cadad4e'::UUID),
       ('2c70b546-ca68-11ec-92d0-60a44cadad4e'::UUID,'bf592ad4-ca61-11ec-92ba-60a44cadad4e'::UUID,10.0,'3704ca84-ca67-11ec-92c7-60a44cadad4e'::UUID),
       ('2c70dc4c-ca68-11ec-92d1-60a44cadad4e'::UUID,'bf592ad4-ca61-11ec-92ba-60a44cadad4e'::UUID,8.0,'37047c78-ca67-11ec-92c6-60a44cadad4e'::UUID),
       ('2c70dc4d-ca68-11ec-92d2-60a44cadad4e'::UUID,'bf5951e4-ca61-11ec-92bb-60a44cadad4e'::UUID,9.0,'3704ca84-ca67-11ec-92c7-60a44cadad4e'::UUID),
       ('2c710352-ca68-11ec-92d3-60a44cadad4e'::UUID,'bf5951e4-ca61-11ec-92bb-60a44cadad4e'::UUID,8.5,'37047c78-ca67-11ec-92c6-60a44cadad4e'::UUID);

INSERT INTO professor_materia (professor, materia, id)
VALUES ('32077fa6-ca60-11ec-92b7-60a44cadad4e'::UUID,'de57bfba-ca64-11ec-92bd-60a44cadad4e'::UUID,'fa011cba-ca65-11ec-92c0-60a44cadad4e'::UUID),
       ('3207f4b8-ca60-11ec-92b8-60a44cadad4e'::UUID,'de589746-ca64-11ec-92be-60a44cadad4e'::UUID,'fa0191cc-ca65-11ec-92c1-60a44cadad4e'::UUID);

INSERT INTO turma_professor_materia (turma, professor_materia)
VALUES ('05e4b9d8-c9b7-11ec-abfa-60a44cadad4e'::UUID,'fa011cba-ca65-11ec-92c0-60a44cadad4e'::UUID),
       ('4d33f73c-ca65-11ec-92bf-60a44cadad4e'::UUID,'fa0191cc-ca65-11ec-92c1-60a44cadad4e'::UUID);