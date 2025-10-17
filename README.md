# Banco de Dados - Oficina Mecânica

Projeto completo de modelagem e implementação de um **banco de dados relacional para um sistema de oficina mecânica**, desenvolvido no **MySQL Workbench**.

---

## 📌 Objetivo
O objetivo é representar um cenário realista de uma oficina mecânica permitindo o controle de clientes, veículos, ordens de serviço, equipes, mecânicos, peças e serviços prestados.

---

### 🧩 Estrutura do Banco
O banco de dados `oficina-mecanica` é composto pelas seguintes entidades principais:

- **Cliente** → Cadastro de clientes.  
- **Veículo** → Veículos associados aos clientes.  
- **Ordem_Servico** → Registro dos serviços e peças aplicadas a um veículo.  
- **Equipe / Mecanico / Equipe_Mecanico** → Organização dos mecânicos em equipes.  
- **Peca / Servico** → Catálogo de peças e serviços disponíveis.  
- **OS_Peca / OS_Servico** → Relações entre ordens de serviço, peças e serviços.

---

## 🧠 Conceitos SQL Praticados

- Criação do banco `oficina_mecanica`;
- Relacionamentos com `ON DELETE CASCADE`;
- Modelagem relacional com chaves primárias, estrangeiras e tabelas associativas (`PRIMARY KEY`, `FOREIGN KEY`).
- Criação de tabelas com constraints e tipos adequados.
- Inserção e Manipulação de dados (`INSERT`, `UPDATE`, `DELETE` e `SELECT`).
- Consultas com filtros `WHERE`, junções `JOIN` e ordenações `ORDER BY`.
- Funções e expressões para atributos derivados e cálculos `SUM` e `COUNT`.
- Agrupamentos com `GROUP BY` e `HAVING`.
- Controle de integridade referencial e uso de `ENUM` para domínios fixos.

---

## 📂 Estrutura do Repositório

📦 dio-oficina-mecanica-database  
│  
├── scripts/  
│   ├── create_database.sql        *--> Criação do banco e tabelas*  
│   ├── insert_data.sql            *--> Inserção dos dados fictícios*  
│   └── sample_queries.sql         *--> Consultas de prática (SELECT, WHERE, JOIN etc.)*  
│  
├── docs/  
│   ├── diagrama-eer.png           *--> Imagem do diagrama*  
│   └── projeto-eer-ecommerce.mwb   *--> Arquivo MySQL WorkBench*  
│  
└── README.md

--- 

## 🛠️ Ferramentas Utilizadas
- **MySQL Workbench** → modelagem conceitual e refinamento do diagrama.  
- **MySQL** → implementação das tabelas e constraints.  

---

## 📝 Autor

Desenvolvido por **Fábio Barros de Oliveira** para o desafio DIO.  
📅 Outubro / 2025
