
CREATE DATABASE IF NOT EXISTS sccp_db;
USE sccp_db;


CREATE TABLE jogadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    posicao VARCHAR(50),
    numero_camisa INT
);

CREATE TABLE estatisticas_jogador (
    id_estatisticas INT AUTO_INCREMENT PRIMARY KEY,
    id_jogador INT NOT NULL,
    gol INT DEFAULT 0,
    assistencia INT DEFAULT 0,
    chances_criadas INT DEFAULT 0,
    FOREIGN KEY (id_jogador) REFERENCES jogadores(id)
);


CREATE TABLE estatisticas_clube (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    jogos INT DEFAULT 0,
    vitorias INT DEFAULT 0,
    derrotas INT DEFAULT 0,
    empates INT DEFAULT 0,
    gols INT DEFAULT 0,
    gols_sofridos INT DEFAULT 0
);