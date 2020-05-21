INSERT INTO Cliente (nomeCliente, cpfCliente, telefoneCliente, enderecoCliente, dtNascimentoCliente) VALUES ('Ricardo Ferla Silva', 408669118, 119841831, 'Rua Jorge Leal Amado de Faria, 49', 19910808);	
INSERT INTO Cliente (nomeCliente, cpfCliente, telefoneCliente, enderecoCliente, dtNascimentoCliente) VALUES ('Ricardo Ferla Silva', 408669139, 119841831, 'Rua Jorge Leal Amado de Faria, 49', 19910808);	
INSERT INTO TipoConta (tipoConta) VALUES ('Conta Corrente');
INSERT INTO TipoConta (tipoConta) VALUES ('Conta Poupança');
INSERT INTO Agencia (enderecoAgencia, telefoneAgencia) VALUES ('Rua Tutoia, 101', 11592103);
INSERT INTO Conta (numeroConta, senhaConta, dtAberturaConta, saldoConta, Cliente_idCliente, TipoConta_idTipoConta, Agencia_idAgencia, numeroToken) VALUES (123, 123, 20180523, 500.00, 1, 1, 1, 123456);
INSERT INTO Conta (numeroConta, senhaConta, dtAberturaConta, saldoConta, numeroToken, Cliente_idCliente, TipoConta_idTipoConta, Agencia_idAgencia) VALUES (321, 123, 20180523, 500.00, 2, 1, 1);
INSERT INTO ControleToken (numeroToken, dtToken) VALUES (123456, 20180603);

SELECT * FROM ControleToken;
SELECT * FROM Cliente;
SELECT * FROM TipoConta;
SELECT * FROM Agencia;
SELECT * FROM Conta;
SELECT Pagamento.Conta_numeroConta FROM Pagamento;
SELECT * FROM Transferencia;
SELECT * FROM  Pagamento;
SELECT * FROM Transacao;

SELECT DISTINCT * FROM Pagamento FULL JOIN Transferencia ON date(dtPagamento) = date(dtTransferencia) WHERE date(dtPagamento) BETWEEN 20180604 AND 20180604 ORDER BY date(dtTransferencia) AND ORDER BY date(dtPagamento);

SELECT numeroConta, senhaConta, dtAberturaConta, saldoConta, Cliente_idCliente, Agencia_idAgencia, TipoConta_idTipoConta, numeroToken, tipoconta FROM Conta INNER JOIN TipoConta;

SELECT identificacaoPagamento, dtPagamento, valorPagamento FROM Transacao INNER JOIN Pagamento ON Transacao.Pagamento_idPagamento = Pagamento.idPagamento WHERE Transacao.Pagamento_idPagamento = 1;

INSERT INTO Transacao (Transacao.Transferencia_idTransferencia, Transacao.Pagamento_idPagamento) VALUES (1,1);

UPDATE Conta SET saldoConta=4000.00 WHERE numeroConta=123;

SELECT identificacaoPagamento, dtPagamento, valorPagamento, identificacaoTransferecia, dtTransferencia, identificacaoTransferecia FROM Transferencia INNER JOIN Pagamento ON Transferencia.dtTransferencia = Pagamento.dtPagamento WHERE dtTransferencia = 20180524;

SELECT identificacaoPagamento, dtPagamento, valorPagamento, identificacaoTransferecia, dtTransferencia, identificacaoTransferecia FROM Transferencia JOIN Pagamento ON Transferencia.Conta_numeroConta = Pagamento.Conta_numeroConta WHERE Pagamento.Conta_numeroConta=123;


SELECT * FROM Pagamento INNER JOIN Transferencia ON date(dtPagamento) = date(dtTransferencia) WHERE date(dtPagamento) BETWEEN '20180531' AND '20180603';
SELECT * FROM Pagamento WHERE date(dtPagamento) = 20180603;

SELECT Pagamento.Conta_numeroConta, numeroConta, identificacaoPagamento, valorPagamento, dtPagamento, identificacaoTransferencia, valorTransferencia, dtTransferencia FROM Transferencia INNER JOIN Pagamento INNER JOIN Conta ON Transferencia.Conta_numeroConta = Conta.numeroConta AND Conta.numeroConta = Pagamento.Conta_numeroConta WHERE Conta.numeroConta = 123;	