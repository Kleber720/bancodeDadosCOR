USE sccp_db;


INSERT INTO jogadores (nome, posicao, numero_camisa) VALUES

('Hugo Souza', 'Goleiro', 1),
('Felipe Longo', 'Goleiro', 40),
('Kauê', 'Goleiro', 51),
('Matheus Donelli', 'Goleiro', 32),
('Matheuzinho', 'Lateral Direito', 2),
('Gabriel Paulista', 'Zagueiro', 3),
('João Pedro Tchoca', 'Zagueiro', 4),
('André Ramalho', 'Zagueiro', 5),
('Gustavo Henrique', 'Zagueiro', 13),
('Pedro Milans', 'Lateral Direito', 20),
('Matheus Bidu', 'Lateral Esquerdo', 21),
('Fabrizio Angileri', 'Lateral Esquerdo', 26),
('Hugo Farias', 'Lateral Esquerdo', 46),
('Breno Bidon', 'Meio-Campista', 7),
('Rodrigo Garro', 'Meio-Campista', 8),
('Raniele', 'Volante', 14),
('André Carrillo', 'Meio-Campista', 19),
('Matheus Pereira', 'Meio-Campista', 23),
('Allan', 'Volante', 29),
('Charles', 'Volante', 35),
('Zakaria Labyad', 'Meio-Campista', 52),
('Jesse Lingard', 'Meio-Campista', 77),
('Alex Santana', 'Meio-Campista', 80),
('Yuri Alberto', 'Atacante', 9),
('Memphis Depay', 'Atacante', 10),
('Vitinho', 'Atacante', 11),
('Pedro Raul', 'Atacante', 18),
('Kayke', 'Atacante', 31),
('Kaio César', 'Atacante', 37),
('Gui Negão', 'Atacante', 56),
('Dieguinho', 'Atacante', 61);


USE sccp_db;


INSERT INTO estatisticas_jogador (id_jogador, gol, assistencia, chances_criadas) VALUES
((SELECT id FROM jogadores WHERE nome = 'Yuri Alberto'), 8, 4, 25),
((SELECT id FROM jogadores WHERE nome = 'Memphis Depay'), 1, 1, 10),
((SELECT id FROM jogadores WHERE nome = 'Pedro Raul'), 2, 2, 8),
((SELECT id FROM jogadores WHERE nome = 'Vitinho'), 1, 1, 6),
((SELECT id FROM jogadores WHERE nome = 'Kaio César'), 2, 2, 12),
((SELECT id FROM jogadores WHERE nome = 'Dieguinho'), 2, 1, 7),
((SELECT id FROM jogadores WHERE nome = 'Kayke'), 2, 0, 5),
((SELECT id FROM jogadores WHERE nome = 'Gui Negão'), 1, 0, 4),
((SELECT id FROM jogadores WHERE nome = 'Rodrigo Garro'), 3, 11, 48),
((SELECT id FROM jogadores WHERE nome = 'Breno Bidon'), 3, 1, 18),
((SELECT id FROM jogadores WHERE nome = 'Jesse Lingard'), 2, 1, 15),
((SELECT id FROM jogadores WHERE nome = 'Zakaria Labyad'), 2, 2, 11),
((SELECT id FROM jogadores WHERE nome = 'Matheus Pereira'), 1, 0, 9),
((SELECT id FROM jogadores WHERE nome = 'Raniele'), 2, 0, 10),
((SELECT id FROM jogadores WHERE nome = 'André Carrillo'), 0, 1, 14),
((SELECT id FROM jogadores WHERE nome = 'Gustavo Henrique'), 5, 2, 8),
((SELECT id FROM jogadores WHERE nome = 'Gabriel Paulista'), 2, 0, 4),
((SELECT id FROM jogadores WHERE nome = 'Matheus Bidu'), 2, 3, 19),
((SELECT id FROM jogadores WHERE nome = 'Matheuzinho'), 1, 4, 22),
((SELECT id FROM jogadores WHERE nome = 'André Ramalho'), 1, 0, 3),
((SELECT id FROM jogadores WHERE nome = 'Fabrizio Angileri'), 1, 0, 5),
((SELECT id FROM jogadores WHERE nome = 'João Pedro Tchoca'), 1, 0, 2),
((SELECT id FROM jogadores WHERE nome = 'Hugo Souza'), 0, 0, 0),
((SELECT id FROM jogadores WHERE nome = 'Kauê'), 0, 0, 0),
((SELECT id FROM jogadores WHERE nome = 'Felipe Longo'), 0, 0, 0);

INSERT INTO estatisticas_clube (jogos, vitorias, derrotas, empates, gols, gols_sofridos) 
VALUES (44, 19, 11, 14, 50, 36);

SELECT * FROM estatisticas_jogador;

SELECT COUNT(*) AS total_jogadores_cadastrados FROM jogadores;

SELECT * FROM vw_estatisticas_clube;

SELECT * FROM vw_desempenho_jogadores;

