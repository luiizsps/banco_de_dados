CREATE TABLE PROFESSOR_RESPONSAVEL (
	CREF VARCHAR(9) PRIMARY KEY,
	nome VARCHAR(50)
);

CREATE TABLE PLANO (
	nome VARCHAR(50) PRIMARY KEY,
	valor VARCHAR(10)
);

CREATE TABLE GRUPO_MUSCULAR (
	nome_musculo VARCHAR(10) PRIMARY KEY
);

CREATE TABLE TREINO (
	tipo VARCHAR(10) PRIMARY KEY,
	qtd_sessoes INT
);
##
CREATE TABLE TREINO_GRUPO (
	tipo VARCHAR(10),
	nome_musculo VARCHAR(10),
	FOREIGN KEY (tipo) REFERENCES TREINO(tipo),
	FOREIGN KEY (nome_musculo) REFERENCES GRUPO_MUSCULAR(nome_musculo)
);

CREATE TABLE EXERCICIO (
	nome_musculo VARCHAR(10),
	nome_exercicio VARCHAR(10),
	descricao VARCHAR(30),
	FOREIGN KEY (nome_musculo) REFERENCES GRUPO_MUSCULAR(nome_musculo),
	PRIMARY KEY (nome_musculo, nome_exercicio)
);

CREATE TABLE TREINO_EXERCICIO (
	tipo VARCHAR(10),
	nome_musculo VARCHAR(10),
	nome_exercicio VARCHAR(10),
	FOREIGN KEY (tipo) REFERENCES TREINO(tipo),
	FOREIGN KEY (nome_musculo, nome_exercicio) REFERENCES EXERCICIO(nome_musculo, nome_exercicio)
);

CREATE TABLE ALUNO (
	matricula VARCHAR(10) PRIMARY KEY,
	nome VARCHAR(50),
	data_nascimento DATE,
	nome_plano VARCHAR(50),
	CREF VARCHAR(9),
	FOREIGN KEY (nome_plano) REFERENCES PLANO(nome),
	FOREIGN KEY (CREF) REFERENCES PROFESSOR_RESPONSAVEL(CREF)
);

CREATE TABLE MENSALIDADE (
	data DATE,
	matricula VARCHAR(10),
	status BOOL,
	FOREIGN KEY (matricula) REFERENCES ALUNO(matricula),
	PRIMARY KEY (data, matricula)
);

CREATE TABLE MENSALIDADE_PLANO (
	data DATE,
	matricula VARCHAR(10),
	nome_plano VARCHAR(50),
	PRIMARY KEY (data, matricula, nome_plano),
	FOREIGN KEY (data, matricula) REFERENCES MENSALIDADE(data, matricula),
	FOREIGN KEY (nome_plano) REFERENCES PLANO(nome)
);

CREATE TABLE ALUNO_TREINO (
	matricula VARCHAR(10),
	tipo VARCHAR(10),
	data_treino DATE,
	numero_sessao INT,
	PRIMARY KEY (matricula, tipo, data_treino),
	FOREIGN KEY (matricula) REFERENCES ALUNO(matricula),
	FOREIGN KEY (tipo) REFERENCES TREINO(tipo)
);

CREATE TABLE ANAMINESE (
	cod VARCHAR(9) PRIMARY KEY,
	peso FLOAT,
	altura FLOAT,
	gordura FLOAT,
	massa FLOAT,
	matricula VARCHAR(10),
	tipo VARCHAR(10),
	data_treino DATE,
	FOREIGN KEY (matricula, tipo, data_treino) REFERENCES ALUNO_TREINO(matricula, tipo, data_treino)
);
