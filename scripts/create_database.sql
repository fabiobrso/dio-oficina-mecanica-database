-- BANCO DE DADOS: Oficina Mecanica

CREATE DATABASE IF NOT EXISTS oficina_mecanica;
USE oficina_mecanica;

-- TABELA: CLIENTE

CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100),
    telefone VARCHAR(20)
);

-- TABELA: VEICULO

CREATE TABLE Veiculo (
    idVeiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL UNIQUE,
    modelo VARCHAR(45),
    ano YEAR,
    idCliente INT NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- TABELA: EQUIPE

CREATE TABLE Equipe (
    idEquipe INT AUTO_INCREMENT PRIMARY KEY,
    nome_equipe VARCHAR(45) NOT NULL
);

-- TABELA: MECÂNICO

CREATE TABLE Mecanico (
    idMecanico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100),
    especialidade VARCHAR(45)
);

-- TABELA ASSOCIATIVA: EQUIPE_MECÂNICO

CREATE TABLE Equipe_Mecanico (
    idEquipe INT,
    idMecanico INT,
    PRIMARY KEY (idEquipe, idMecanico),
    FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (idMecanico) REFERENCES Mecanico(idMecanico)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- TABELA: ORDEM DE SERVIÇO (OS)

CREATE TABLE Ordem_Servico (
    idOS INT AUTO_INCREMENT PRIMARY KEY,
    data_emissao DATE NOT NULL,
    data_conclusao DATE,
    valor_total DECIMAL(10,2),
    status ENUM('Aberta', 'Em andamento', 'Concluída', 'Cancelada') DEFAULT 'Aberta',
    idVeiculo INT,
    idEquipe INT,
    FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- TABELA: PEÇA

CREATE TABLE Peca (
    idPeca INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL
);

-- TABELA ASSOCIATIVA: OS_PEÇA

CREATE TABLE OS_Peca (
    idOS INT,
    idPeca INT,
    quantidade INT NOT NULL DEFAULT 1,
    PRIMARY KEY (idOS, idPeca),
    FOREIGN KEY (idOS) REFERENCES Ordem_Servico(idOS)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (idPeca) REFERENCES Peca(idPeca)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- TABELA: SERVIÇO

CREATE TABLE Servico (
    idServico INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    valor_mao_obra DECIMAL(10,2) NOT NULL
);

-- TABELA ASSOCIATIVA: OS_SERVIÇO

CREATE TABLE OS_Servico (
    idOS INT,
    idServico INT,
    quantidade INT NOT NULL DEFAULT 1,
    PRIMARY KEY (idOS, idServico),
    FOREIGN KEY (idOS) REFERENCES Ordem_Servico(idOS)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (idServico) REFERENCES Servico(idServico)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

show tables;
