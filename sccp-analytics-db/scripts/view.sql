USE sccp_db;

CREATE OR REPLACE VIEW vw_desempenho_jogadores AS
SELECT 
    j.nome,
    j.posicao,
    j.numero_camisa,
    e.gol,
    e.assistencia,
    e.chances_criadas,
    (e.gol + e.assistencia) AS participacoes_em_gols
FROM jogadores j
JOIN estatisticas_jogador e ON j.id = e.id_jogador
ORDER BY e.gol DESC, e.assistencia DESC;



CREATE OR REPLACE VIEW vw_estatisticas_clube AS
SELECT 
    jogos,
    vitorias,
    empates,
    derrotas,
    gols AS gols_pro,
    gols_sofridos,
    (gols - gols_sofridos) AS saldo_de_gols,
    
    ROUND(((vitorias * 3 + empates) / (jogos * 3.0)) * 100, 2) AS aproveitamento_pct
FROM estatisticas_clube;