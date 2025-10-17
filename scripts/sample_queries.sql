-- Consultas SQL de exemplo para testes

USE oficina_mecanica;


-- 1. Recuperações simples com SELECT

SELECT nome, telefone FROM Cliente;

-- 2. Filtros com WHERE

SELECT modelo, ano FROM Veiculo
WHERE ano > 2016;

-- 3. Atributo derivado (expressão com cálculo)

SELECT 
    p.descricao,
    p.valor_unitario,
    osp.quantidade,
    (p.valor_unitario * osp.quantidade) AS total_pecas
FROM Peca p
JOIN OS_Peca osp ON p.idPeca = osp.idPeca;

-- 4. JOIN simples

SELECT 
    c.nome AS cliente,
    v.placa,
    os.status,
    os.valor_total
FROM Ordem_Servico os
JOIN Veiculo v ON os.idVeiculo = v.idVeiculo
JOIN Cliente c ON v.idCliente = c.idCliente;

-- 5. JOIN com múltiplas tabelas

SELECT 
    os.idOS,
    c.nome AS cliente,
    s.descricao AS servico,
    s.valor_mao_obra,
    p.descricao AS peca,
    p.valor_unitario
FROM Ordem_Servico os
JOIN Veiculo v ON os.idVeiculo = v.idVeiculo
JOIN Cliente c ON v.idCliente = c.idCliente
JOIN OS_Servico oss ON os.idOS = oss.idOS
JOIN Servico s ON oss.idServico = s.idServico
LEFT JOIN OS_Peca osp ON os.idOS = osp.idOS
LEFT JOIN Peca p ON osp.idPeca = p.idPeca;


-- 6. Recuperando quantidade de ordens por equipe (GROUP BY)

SELECT 
    e.nome_equipe,
    COUNT(os.idOS) AS total_ordens
FROM Ordem_Servico os
JOIN Equipe e ON os.idEquipe = e.idEquipe
GROUP BY e.nome_equipe;

-- 7. Atualização de status

UPDATE Ordem_Servico
SET status = 'Concluída', data_conclusao = CURDATE(), valor_total = 1200.00
WHERE idOS = 2;