CREATE TABLE CLUBE (
	cnpj VARCHAR(14) PRIMARY KEY,
	nome VARCHAR(100)
);

CREATE TABLE PROFISSIONAL (
	cnpj VARCHAR(14) PRIMARY KEY,
	nome_dir VARCHAR(50),
	sobrenome_dir VARCHAR(100),
	FOREIGN KEY (cnpj) REFERENCES CLUBE(cnpj)
);

CREATE TABLE AMADOR (
	cnpj VARCHAR(14) PRIMARY KEY,
	cidade VARCHAR(50),
	ano INT,
	FOREIGN KEY (cnpj) REFERENCES CLUBE(cnpj)
);

CREATE TABLE PATROCINADOR (
	cnpj VARCHAR(14) PRIMARY KEY,
	nome VARCHAR(50)
);

CREATE TABLE PATROCINADOR_PROFISSIONAL (
	cnpj_pat VARCHAR(14),
	cnpj_clube VARCHAR(14),
	data_pat VARCHAR(10),
	PRIMARY KEY (cnpj_pat, cnpj_clube),
	FOREIGN KEY (cnpj_pat) REFERENCES PATROCINADOR(cnpj),
	FOREIGN KEY (cnpj_clube) REFERENCES CLUBE(cnpj)
);

CREATE TABLE UNIFORME (
	cnpj VARCHAR(14) NOT NULL,
	tipo VARCHAR(9) NOT NULL,
	descricao VARCHAR(200),
	PRIMARY KEY (cnpj, tipo),
	FOREIGN KEY (cnpj) REFERENCES CLUBE(cnpj)
);

CREATE TABLE CORES (
	cod_cor VARCHAR(6) PRIMARY KEY, # hexadecimal
	nome VARCHAR(20)
);

CREATE TABLE CORES_UNIFORME (
	cod_cor VARCHAR(6),
	cnpj VARCHAR(14),
	tipo VARCHAR(9),
	PRIMARY KEY (cod_cor, cnpj),
	FOREIGN KEY (cod_cor) REFERENCES CORES(cod_cor),
	FOREIGN KEY (cnpj) REFERENCES CLUBE(cnpj)
);

CREATE TABLE JOGADOR (
	cpf VARCHAR(11) PRIMARY KEY,
	nome VARCHAR(100)
);

CREATE TABLE JOGADOR_CLUBE (
	cpf VARCHAR(11),
	cnpj VARCHAR(14),
	posicao VARCHAR(20),
	PRIMARY KEY (cpf, cnpj),
	FOREIGN KEY (cpf) REFERENCES JOGADOR(cpf),
	FOREIGN KEY (cnpj) REFERENCES CLUBE(cnpj)
);

CREATE TABLE FEDERACAO (
	cnpj VARCHAR(14) PRIMARY KEY,
	nome VARCHAR(50)
);

CREATE TABLE CAMPEONATO (
	sigla VARCHAR(10) PRIMARY KEY,
	nome VARCHAR(50),
	cnpj VARCHAR(14),
	FOREIGN KEY (cnpj) REFERENCES FEDERACAO(cnpj)
);

CREATE TABLE CAMPEONATO_CLUBE (
	sigla VARCHAR(10),
	cnpj VARCHAR(14),
	PRIMARY KEY (sigla, cnpj),
	FOREIGN KEY (sigla) REFERENCES CAMPEONATO(sigla),
	FOREIGN KEY (cnpj) REFERENCES CLUBE(cnpj)
);

CREATE TABLE PARTIDA (
	sigla VARCHAR(10),
	ano INT,
	cnpj_man VARCHAR(14),
	cnpj_vis VARCHAR(14),
	cidade VARCHAR(50),
	data_partida DATE,
	gols_man INT,
	gols_vis INT,
	PRIMARY KEY (sigla, ano, cnpj_man, cnpj_vis),
	FOREIGN KEY (sigla) REFERENCES CAMPEONATO(sigla),
	FOREIGN KEY (cnpj_man) REFERENCES CLUBE(cnpj),
	FOREIGN KEY (cnpj_vis) REFERENCES CLUBE(cnpj)
);

CREATE TABLE ARBITRO (
	rg VARCHAR(9) PRIMARY KEY,
	nome VARCHAR(100),
	hab VARCHAR(50),
	nome_mae VARCHAR(50)
);

CREATE TABLE ARBITRO_PARTIDA (
	rg VARCHAR(9),
	sigla VARCHAR(10),
	ano INT,
	cnpj_man VARCHAR(14),
	cnpj_vis VARCHAR(14),
	PRIMARY KEY (rg, sigla, ano, cnpj_man, cnpj_vis),
	FOREIGN KEY (sigla, ano, cnpj_man, cnpj_vis) REFERENCES PARTIDA(sigla, ano, cnpj_man, cnpj_vis)
);

CREATE TABLE JOGADOR_PARTIDA (
	cpf VARCHAR(11),
	sigla VARCHAR(10),
	ano INT,
	cnpj_man VARCHAR(14),
	cnpj_vis VARCHAR(14),
	n_gols INT,
	PRIMARY KEY (cpf, sigla, ano, cnpj_man, cnpj_vis),
	FOREIGN KEY (sigla, ano, cnpj_man, cnpj_vis) REFERENCES PARTIDA(sigla, ano, cnpj_man, cnpj_vis),
	FOREIGN KEY (cpf) REFERENCES JOGADOR(cpf)
	
);
