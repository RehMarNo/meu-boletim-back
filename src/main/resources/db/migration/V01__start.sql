CREATE TABLE IF NOT EXISTS config_escola (
	inicio_1bimestre date NOT NULL,
	fim_1bimestre date NOT NULL,
	inicio_2bimestre date NOT NULL,
	fim_2bimestre date NOT NULL,
	inicio_3bimestre date NOT NULL,
	fim_3bimestre date NOT NULL,
	inicio_4bimestre date NOT NULL,
	fim_4bimestre date NOT NULL,
	media_aprovacao float4 NOT NULL
);


CREATE TABLE IF NOT EXISTS materia (
	id uuid NOT NULL DEFAULT uuid_generate_v1(),
	nome varchar NOT NULL,
	CONSTRAINT materia_pk PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS pessoa (
	id uuid NOT NULL DEFAULT uuid_generate_v1(),
	nome varchar NOT NULL,
	genero varchar NOT NULL,
	datanasc date NOT NULL,
	cep varchar NULL,
	rua varchar NULL,
	numero int4 NULL,
	bairro varchar NULL,
	cidade varchar NULL,
	uf varchar NULL,
	telefone varchar NULL,
	email varchar NULL,
	login varchar NULL,
	senha varchar NULL,
	tipo_pessoa varchar NOT NULL,
	ativo bool NULL DEFAULT true,
	CONSTRAINT pessoa_pk PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS frequencia (
	id uuid NOT NULL DEFAULT uuid_generate_v1(),
	aluno uuid NOT NULL,
	materia uuid NOT NULL,
	data_presenca date NOT NULL,
	presenca bool NOT NULL DEFAULT false,
	CONSTRAINT frequencia_pk PRIMARY KEY (id),
	CONSTRAINT frequencia_fk FOREIGN KEY (aluno) REFERENCES pessoa(id),
	CONSTRAINT frequencia_fk_1 FOREIGN KEY (materia) REFERENCES materia(id)
);
CREATE INDEX frequencia_data_presenca_idx ON frequencia USING btree (data_presenca);


CREATE TABLE IF NOT EXISTS professor_materia (
	professor uuid NOT NULL,
	materia uuid NOT NULL,
	id uuid NOT NULL DEFAULT uuid_generate_v1(),
	CONSTRAINT professor_materia_pk PRIMARY KEY (id),
	CONSTRAINT professor_materia_un UNIQUE (professor, materia),
	CONSTRAINT professor_materia_fk FOREIGN KEY (professor) REFERENCES pessoa(id),
	CONSTRAINT professor_materia_fk_1 FOREIGN KEY (materia) REFERENCES materia(id)
);


CREATE TABLE IF NOT EXISTS turma (
	id uuid NOT NULL DEFAULT uuid_generate_v1(),
	nome varchar NOT NULL,
	ano_letivo int4 NOT NULL,
	turno varchar NOT NULL,
	serie varchar NOT NULL,
	CONSTRAINT turma_pk PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS turma_professor_materia (
	turma uuid NOT NULL,
	professor_materia uuid NOT NULL,
	CONSTRAINT turma_professor_materia_fk FOREIGN KEY (turma) REFERENCES turma(id),
	CONSTRAINT turma_professor_materia_fk_1 FOREIGN KEY (professor_materia) REFERENCES professor_materia(id)
);


CREATE TABLE IF NOT EXISTS atividade (
	id uuid NOT NULL DEFAULT uuid_generate_v1(),
	materia uuid NOT NULL,
	data_atividade date NOT NULL,
	tipo_atividade varchar NOT NULL,
	turma uuid NOT NULL,
	CONSTRAINT atividade_pk PRIMARY KEY (id),
	CONSTRAINT atividade_fk FOREIGN KEY (materia) REFERENCES materia(id),
	CONSTRAINT atividade_fk_1 FOREIGN KEY (turma) REFERENCES turma(id)
);


CREATE TABLE IF NOT EXISTS matricula (
	id uuid NOT NULL,
	nome_mae varchar NOT NULL,
	responsavel uuid NOT NULL,
	turma uuid NULL,
	nome_pai varchar NULL,
	CONSTRAINT aluno_pk PRIMARY KEY (id),
	CONSTRAINT aluno_fk FOREIGN KEY (id) REFERENCES pessoa(id),
	CONSTRAINT aluno_fk2 FOREIGN KEY (turma) REFERENCES turma(id),
	CONSTRAINT matricula_fk FOREIGN KEY (responsavel) REFERENCES pessoa(id)
);


CREATE TABLE IF NOT EXISTS nota (
	id uuid NOT NULL DEFAULT uuid_generate_v1(),
	aluno uuid NOT NULL,
	nota float4 NOT NULL,
	atividade uuid NOT NULL,
	CONSTRAINT nota_pk PRIMARY KEY (id),
	CONSTRAINT nota_fk FOREIGN KEY (aluno) REFERENCES pessoa(id),
	CONSTRAINT nota_fk1 FOREIGN KEY (atividade) REFERENCES atividade(id)
);