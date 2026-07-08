# DB_herois_viloes

# Banco de Dados de Heróis e Vilões

Script SQL que modela um pequeno banco de dados relacional sobre personagens de quadrinhos, com duas tabelas relacionadas por chave estrangeira: editoras e personagens.

## 📋 Funcionalidades

- Criação da tabela `editoras`, armazenando o nome de cada editora de quadrinhos
- Criação da tabela `personagens`, armazenando nome de herói, nome real, alinhamento (herói, vilão ou anti-herói), ano de criação e a editora à qual pertence
- Relacionamento entre as tabelas através de chave estrangeira (`editora_id` → `editoras.id`)
- Inserção de dados de exemplo com personagens da Marvel e da DC

## 🛠️ Tecnologias utilizadas

- PostgreSQL
- `CREATE TABLE` com tipos `SERIAL`, `VARCHAR` e `INT`
- Restrições (`constraints`): `PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `FOREIGN KEY`
- `INSERT INTO` com múltiplos valores

## 💻 Conceitos praticados

- Modelagem de relacionamento **1:N** (uma editora tem vários personagens)
- Uso de chave primária autoincrementável (`SERIAL PRIMARY KEY`)
- Uso de chave estrangeira nomeada (`CONSTRAINT fk_editora`) para garantir a integridade referencial
- Definição de colunas obrigatórias (`NOT NULL`) e únicas (`UNIQUE`)
- Inserção de múltiplos registros em uma única instrução `INSERT`

## ▶️ Como executar

```bash
psql -U seu_usuario -d nome_do_banco -f banco_herois_viloes.sql
```

Ou copiando e colando os comandos diretamente no terminal do `psql` ou em uma ferramenta como o pgAdmin/DBeaver.

## 📄 Exemplo de estrutura gerada

```
Tabela: editoras
 id |  nome
----+---------
  1 | Marvel
  2 | DC

Tabela: personagens
 id |  nome_heroi   |  nome_real   | alinhamento | ano_criacao | editora_id
----+---------------+--------------+-------------+-------------+-----------
  1 | Homem de Ferro| Tony Stark   | Herói       | 1963        | 1
  2 | Homem-Aranha  | Peter Parker | Herói       | 1962        | 1
  5 | Batman        | Bruce Wayne  | Herói       | 1939        | 2
```



## 🔍 Possíveis melhorias futuras

- Adicionar uma tabela de `equipes` (ex: Vingadores, Liga da Justiça) com relacionamento N:N via tabela associativa
- Incluir consultas (`SELECT`) de exemplo, como listar todos os personagens de uma editora ou contar heróis vs. vilões
- Adicionar `CHECK constraint` para validar que `alinhamento` só aceite valores específicos ('Herói', 'Vilão', 'Anti-herói')

## 👤 Autor

Projeto desenvolvido por DAVI RAPOSO PEREIRA como parte dos estudos de modelagem de banco de dados relacional com PostgreSQL.
