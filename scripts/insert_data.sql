-- INSERINDO DADOS FICTÍCIOS

USE oficina_mecanica;

-- CLIENTES
INSERT INTO Cliente (nome, endereco, telefone) VALUES
('Carlos Silva', 'Rua das Flores, 120', '(11) 98888-1111'),
('Ana Pereira', 'Av. Brasil, 450', '(11) 97777-2222'),
('João Mendes', 'Rua das Laranjeiras, 90', '(11) 96666-3333');

-- VEÍCULOS
INSERT INTO Veiculo (placa, modelo, ano, idCliente) VALUES
('ABC-1D34', 'Fiat Uno', 2015, 1),
('XYZ-5F78', 'Honda Civic', 2019, 2),
('KLM-4E21', 'Chevrolet Onix', 2020, 3);

-- EQUIPES
INSERT INTO Equipe (nome_equipe) VALUES
('Equipe Alfa'),
('Equipe Beta');

-- MECÂNICOS
INSERT INTO Mecanico (nome, endereco, especialidade) VALUES
('Roberto Lima', 'Rua Central, 10', 'Motor'),
('Eduardo Gomes', 'Rua da Oficina, 22', 'Suspensão'),
('Mariana Souza', 'Av. Industrial, 500', 'Freios');

-- RELACIONAMENTO EQUIPE x MECÂNICO
INSERT INTO Equipe_Mecanico (idEquipe, idMecanico) VALUES
(1, 1),
(1, 3),
(2, 2);

-- ORDEM DE SERVIÇO
INSERT INTO Ordem_Servico (data_emissao, data_conclusao, valor_total, status, idVeiculo, idEquipe) VALUES
('2025-10-01', '2025-10-05', 850.00, 'Concluída', 1, 1),
('2025-10-06', NULL, NULL, 'Em andamento', 2, 2),
('2025-10-07', NULL, NULL, 'Aberta', 3, 1);

-- PEÇAS
INSERT INTO Peca (descricao, valor_unitario) VALUES
('Filtro de óleo', 35.00),
('Pastilha de freio', 120.00),
('Correia dentada', 180.00);

-- RELAÇÃO OS x PEÇA
INSERT INTO OS_Peca (idOS, idPeca, quantidade) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 1);

-- SERVIÇOS
INSERT INTO Servico (descricao, valor_mao_obra) VALUES
('Troca de óleo', 80.00),
('Troca de pastilha de freio', 150.00),
('Substituição da correia dentada', 300.00);

-- RELAÇÃO OS x SERVIÇO
INSERT INTO OS_Servico (idOS, idServico, quantidade) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 1);