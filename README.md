# SCCP Data Analytics & Database Project

![SQL](https://img.shields.io/badge/SQL-2563EB?style=flat-square) ![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)

## Visão Geral
Este projeto consiste no desenvolvimento de um banco de dados relacional e camadas de visualização de dados voltados à análise de desempenho do elenco do Sport Club Corinthians Paulista na temporada 2026. 

O objetivo principal é demonstrar o ciclo completo de dados: desde o levantamento das regras de negócio, modelagem conceitual e física na 3ª Forma Normal (3FN), até o povoamento e a criação de visões analíticas (`Views`) otimizadas para consumo por ferramentas de Business Intelligence (BI).

---

## Estrutura do Banco de Dados

### Diagrama Entidade-Relacionamento (DER)

```mermaid
erDiagram
    JOGADORES ||--o{ ESTATISTICAS_JOGADOR : "possui"
    
    JOGADORES {
        int id PK "AUTO_INCREMENT"
        string nome "NOT NULL"
        string posicao
        int numero_camisa
    }

    ESTATISTICAS_JOGADOR {
        int id_estatisticas PK "AUTO_INCREMENT"
        int id_jogador FK "NOT NULL"
        int gol "DEFAULT 0"
        int assistencia "DEFAULT 0"
        int chances_criadas "DEFAULT 0"
    }

    ESTATISTICAS_CLUBE {
        int id PK "AUTO_INCREMENT"
        int jogos "DEFAULT 0"
        int vitorias "DEFAULT 0"
        int derrotas "DEFAULT 0"
        int empates "DEFAULT 0"
        int gols "DEFAULT 0"
        int gols_sofridos "DEFAULT 0"
    }
```

---

## Estrutura dos Scripts e Arquivos

```text
.
├── sccp-analytics-db/
│   └── scripts/
│   ├── schema.sql        -- Criação do banco de dados, tabelas e restrições
│   ├── seed.sql          -- Inserção dos dados do elenco e estatísticas
│   └── view.sql         -- Construção das Views de análise de desempenho
└── README.md                -- Documentação técnica do projeto
```

---

## Recursos e Modelagem SQL

### 1. Modelagem Relacional e Integridade Referencial
O banco foi modelado garantindo a integridade dos dados por meio do uso de Chaves Primárias (`PRIMARY KEY`), Chaves Estrangeiras (`FOREIGN KEY`) com restrição `NOT NULL`, e atribuição de valores padrão (`DEFAULT 0`) para prevenção de valores nulos em cálculos agregados.

### 2. Camada Analítica (Views)
Foram desenvolvidas visões para abstrair a complexidade de consultas e entregar dados prontos para a camada de visualização:

* **`vw_desempenho_jogadores`**: Executa o relacionamento (`JOIN`) entre as tabelas de atletas e estatísticas individuais, calculando dinamicamente a métrica de participações diretas em gols (`gols + assistências`).
* **`vw_estatisticas_clube`**: Consolida os dados do clube, realizando os cálculos de **Saldo de Gols** (`gols_pro - gols_sofridos`) e a taxa de **Aproveitamento de Pontos (%)** segundo a fórmula oficial do futebol.

---

## Como Executar o Projeto

### Pré-requisitos
* MySQL Server 8.0 ou superior (ou container Docker com MySQL).
* Cliente SQL (VS Code com extensão Database Client, DBeaver ou MySQL Workbench).

### Passo a Passo

1. Clone o repositório para o seu ambiente local:
   ```bash
   git clone https://github.com/Kleber720/bancodeDadosCOR.git
   cd bancodeDadosCOR
   ```

2. Execute o script de criação do schema:
   ```sql
   SOURCE sccp-analytics-db/scripts/schema.sql;
   ```

3. Execute o script de povoamento inicial (Seeding):
   ```sql
   SOURCE sccp-analytics-db/scripts/seed.sql;
   ```

4. Crie as Views analíticas:
   ```sql
   SOURCE sccp-analytics-db/scripts/view.sql;
   ```

5. Valide a instalação consultando a visão consolidada de atletas:
   ```sql
   SELECT * FROM vw_desempenho_jogadores LIMIT 10;
   ```

---

## Tecnologias Utilizadas

* **Linguagem DDL/DML:** SQL (ANSI / MySQL 8.0 dialects).
* **Modelagem:** Mermaid.js.
* **IDE/Ambiente:** Visual Studio Code.
* **Controle de Versão:** Git e GitHub.



---

[← Portfólio de Kleber Amaro](https://github.com/Kleber720) · [Todos os repositórios](https://github.com/Kleber720?tab=repositories)
