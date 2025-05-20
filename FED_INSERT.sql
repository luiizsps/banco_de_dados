# Criando federação
INSERT INTO FEDERACAO(cnpj, nome) VALUES ("91195660000120", "CONMEBOL");

# Criando campeonato
INSERT INTO CAMPEONATO(sigla, nome, cnpj) VALUES ("LIB", "LIBERTADORES", "91195660000120");

# Criando clubes
INSERT INTO CLUBE(cnpj, nome) VALUES ("70256943000165", "Palmeiras");
INSERT INTO CLUBE(cnpj, nome) VALUES ("54646690000180", "Bahia");
INSERT INTO CLUBE(cnpj, nome) VALUES ("10984886000109", "LDU");
INSERT INTO CLUBE(cnpj, nome) VALUES ("13750330000146", "Nacional");
INSERT INTO CLUBE(cnpj, nome) VALUES ("10297686000188", "River Plate");

# Criando partidas
INSERT INTO PARTIDA(sigla, ano, cnpj_man, cnpj_vis, cidade, data_partida, gols_man, gols_vis)
VALUES ("LIB", 2025, "70256943000165", "10984886000109", "São Paulo", "2025-06-10", 2, 0);
INSERT INTO PARTIDA(sigla, ano, cnpj_man, cnpj_vis, cidade, data_partida, gols_man, gols_vis)
VALUES ("LIB", 2025, "10984886000109", "70256943000165", "Quito", "2025-06-17", 0, 1);
INSERT INTO PARTIDA(sigla, ano, cnpj_man, cnpj_vis, cidade, data_partida, gols_man, gols_vis)
VALUES ("LIB", 2025, "54646690000180", "13750330000146", "Salvador", "2025-05-01", 3, 1);
INSERT INTO PARTIDA(sigla, ano, cnpj_man, cnpj_vis, cidade, data_partida, gols_man, gols_vis)
VALUES ("LIB", 2025, "13750330000146", "54646690000180", "Montevideu", "2025-05-08", 1, 1);
INSERT INTO PARTIDA(sigla, ano, cnpj_man, cnpj_vis, cidade, data_partida, gols_man, gols_vis)
VALUES ("LIB", 2025, "10984886000109", "10297686000188", "Quito", "2025-05-08", 2, 1);
INSERT INTO PARTIDA(sigla, ano, cnpj_man, cnpj_vis, cidade, data_partida, gols_man, gols_vis)
VALUES ("LIB", 2025, "10297686000188", "10984886000109", "Buenos Aires", "2025-05-15", 3, 0);
INSERT INTO PARTIDA(sigla, ano, cnpj_man, cnpj_vis, cidade, data_partida, gols_man, gols_vis)
VALUES ("LIB", 2025, "10297686000188", "13750330000146", "Buenos Aires", "2025-06-08", 2, 0);
INSERT INTO PARTIDA(sigla, ano, cnpj_man, cnpj_vis, cidade, data_partida, gols_man, gols_vis)
VALUES ("LIB", 2025, "13750330000146", "10297686000188", "Montevideu", "2025-05-15", 2, 1);
INSERT INTO PARTIDA(sigla, ano, cnpj_man, cnpj_vis, cidade, data_partida, gols_man, gols_vis)
VALUES ("LIB", 2025, "70256943000165", "54646690000180", "São Paulo", "2025-04-02", 2, 1);
INSERT INTO PARTIDA(sigla, ano, cnpj_man, cnpj_vis, cidade, data_partida, gols_man, gols_vis)
VALUES ("LIB", 2025, "54646690000180", "70256943000165", "Salvador", "2025-04-09", 4, 1);

# Criando jogadores
INSERT INTO JOGADOR(cpf, nome) VALUES ("17349568042", "Thiago da Silva Rocha");
INSERT INTO JOGADOR(cpf, nome) VALUES ("20478392057", "Lucas Henrique Almeida");
INSERT INTO JOGADOR(cpf, nome) VALUES ("35612807003", "Rafael Costa Moreira");
INSERT INTO JOGADOR(cpf, nome) VALUES ("01976435091", "Bruno Martins Ferreira");
INSERT INTO JOGADOR(cpf, nome) VALUES ("84160742000", "Gustavo Lima Nogueira");
INSERT INTO JOGADOR(cpf, nome) VALUES ("48319060024", "Matheus Oliveira Santos");
INSERT INTO JOGADOR(cpf, nome) VALUES ("26791833018", "Diego Augusto Carvalho");
INSERT INTO JOGADOR(cpf, nome) VALUES ("69503217030", "Pedro Henrique Duarte");
INSERT INTO JOGADOR(cpf, nome) VALUES ("72814996065", "João Paulo Teixeira");
INSERT INTO JOGADOR(cpf, nome) VALUES ("33478529080", "Felipe Ramos da Cunha");

# Associando jogadores aos clubes
INSERT INTO JOGADOR_CLUBE(cpf, cnpj, posicao) VALUES ("17349568042", "70256943000165", "Atacante");
INSERT INTO JOGADOR_CLUBE(cpf, cnpj, posicao) VALUES ("20478392057", "70256943000165", "Zagueiro");
INSERT INTO JOGADOR_CLUBE(cpf, cnpj, posicao) VALUES ("35612807003", "54646690000180", "Atacante");
INSERT INTO JOGADOR_CLUBE(cpf, cnpj, posicao) VALUES ("01976435091", "54646690000180", "Lateral");
INSERT INTO JOGADOR_CLUBE(cpf, cnpj, posicao) VALUES ("84160742000", "10984886000109", "Atacante");
INSERT INTO JOGADOR_CLUBE(cpf, cnpj, posicao) VALUES ("48319060024", "10984886000109", "Ala");
INSERT INTO JOGADOR_CLUBE(cpf, cnpj, posicao) VALUES ("26791833018", "13750330000146", "Atacante");
INSERT INTO JOGADOR_CLUBE(cpf, cnpj, posicao) VALUES ("69503217030", "13750330000146", "Meio-campista");
INSERT INTO JOGADOR_CLUBE(cpf, cnpj, posicao) VALUES ("72814996065", "10297686000188", "Atacante");
INSERT INTO JOGADOR_CLUBE(cpf, cnpj, posicao) VALUES ("33478529080", "10297686000188", "Goleiro");

# Associando jogadores às partidas
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("17349568042", "LIB", 2025, "70256943000165", "10984886000109", 2);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("20478392057", "LIB", 2025, "10984886000109", "70256943000165", 1);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("35612807003", "LIB", 2025, "54646690000180", "13750330000146", 3);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("26791833018", "LIB", 2025, "54646690000180", "13750330000146", 1);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("26791833018", "LIB", 2025, "13750330000146", "54646690000180", 1);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("35612807003", "LIB", 2025, "13750330000146", "54646690000180", 1);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("84160742000", "LIB", 2025, "10984886000109", "10297686000188", 2);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("72814996065", "LIB", 2025, "10984886000109", "10297686000188", 1);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("72814996065", "LIB", 2025, "10297686000188", "10984886000109", 2);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("33478529080", "LIB", 2025, "10297686000188", "10984886000109", 1);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("72814996065", "LIB", 2025, "10297686000188", "13750330000146", 1);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("33478529080", "LIB", 2025, "10297686000188", "13750330000146", 1);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("26791833018", "LIB", 2025, "13750330000146", "10297686000188", 2);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("72814996065", "LIB", 2025, "13750330000146", "10297686000188", 1);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("17349568042", "LIB", 2025, "70256943000165", "54646690000180", 1);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("20478392057", "LIB", 2025, "70256943000165", "54646690000180", 1);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("35612807003", "LIB", 2025, "70256943000165", "54646690000180", 1);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("35612807003", "LIB", 2025, "54646690000180", "70256943000165", 2);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("01976435091", "LIB", 2025, "54646690000180", "70256943000165", 2);
INSERT INTO JOGADOR_PARTIDA(cpf, sigla, ano, cnpj_man, cnpj_vis, n_gols) VALUES ("17349568042", "LIB", 2025, "54646690000180", "70256943000165", 1);
