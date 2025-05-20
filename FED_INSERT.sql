INSERT INTO FEDERACAO(cnpj, nome) VALUES ("91195660000120", "CONMEBOL");
INSERT INTO CAMPEONATO(sigla, nome, cnpj) VALUES ("LIB", "LIBERTADORES", "91195660000120");
INSERT INTO CLUBE(cnpj, nome) VALUES ("70256943000165", "Palmeiras");
INSERT INTO CLUBE(cnpj, nome) VALUES ("54646690000180", "Bahia");
INSERT INTO CLUBE(cnpj, nome) VALUES ("10984886000109", "LDU");
INSERT INTO CLUBE(cnpj, nome) VALUES ("13750330000146", "Nacional");
INSERT INTO CLUBE(cnpj, nome) VALUES ("10297686000188", "River Plate");

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

