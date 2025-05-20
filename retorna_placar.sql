SELECT
    jp.sigla,
    jp.ano,
    jp.cnpj_man,
    cm.nome AS clube_mandante,
    jp.cnpj_vis,
    cv.nome AS clube_visitante,
    SUM(CASE WHEN jc.cnpj = jp.cnpj_man THEN jp.n_gols ELSE 0 END) AS gols_mandante,
    SUM(CASE WHEN jc.cnpj = jp.cnpj_vis THEN jp.n_gols ELSE 0 END) AS gols_visitante
FROM
    JOGADOR_PARTIDA jp
JOIN
    JOGADOR_CLUBE jc ON jp.cpf = jc.cpf
JOIN
    CLUBE cm ON jp.cnpj_man = cm.cnpj
JOIN
    CLUBE cv ON jp.cnpj_vis = cv.cnpj
GROUP BY
    jp.sigla, jp.ano, jp.cnpj_man, cm.nome, jp.cnpj_vis, cv.nome
ORDER BY
    jp.ano, jp.sigla;
