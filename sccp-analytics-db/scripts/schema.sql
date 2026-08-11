-- 1. Criação e Seleção do Banco
CREATE DATABASE IF NOT EXISTS sccp_db;
USE sccp_db;

-- 2. Tabela de Jogadores
CREATE TABLE jogadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    posicao VARCHAR(50),
    numero_camisa INT
);

-- 3. Tabela de Estatísticas dos Jogadores (Relacionamento 1:N)
CREATE TABLE estatisticas_jogador (
    id_estatisticas INT AUTO_INCREMENT PRIMARY KEY,
    id_jogador INT NOT NULL,
    gol INT DEFAULT 0,
    assistencia INT DEFAULT 0,
    chances_criadas INT DEFAULT 0,
    FOREIGN KEY (id_jogador) REFERENCES jogadores(id)
);

-- 4. Tabela de Estatísticas do Clube
CREATE TABLE estatisticas_clube (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Boa prática: ter uma chave primária
    jogos INT DEFAULT 0,
    vitorias INT DEFAULT 0,
    derrotas INT DEFAULT 0,
    empates INT DEFAULT 0,
    gols INT DEFAULT 0,
    gols_sofridos INT DEFAULT 0
);