package service;

import java.util.ArrayList;

import javax.swing.JOptionPane;

import model.Conta;
import model.Transacao;
import dao.TransacaoDAO;

//Est� classe chama o ClienteDAO, ele executa os metodos da classe DAO.

public class TransacaoService {
	TransacaoDAO dao = new TransacaoDAO();
	
	public int criarPagamento(Transacao transacao, Conta conta) {
		return dao.criarPagamento(transacao, conta);
	}
	
	public int criarTransferencia(Transacao transacao, Conta conta) {
		return dao.criarTransferencia(transacao, conta);
	}
	
	public ArrayList<Transacao> listarTransacao(Transacao transacao) {
		return dao.listarTransacao(transacao);
	}
	
	public double fazPagamento(Conta conta, Transacao transacao) {
		if(conta.getSaldoConta() >= transacao.getValorTransacao()) {
			conta.setSaldoConta(conta.getSaldoConta() - transacao.getValorTransacao());
			JOptionPane.showMessageDialog(null,"Pagamento efetuado com sucesso");
		this.criarPagamento(transacao, conta);
		ContaService service = new ContaService();
		service.atualizar(conta);
		}else {
			JOptionPane.showMessageDialog(null, "Você não tem saldo suficiente para realizar esta transação !");
		}
		return conta.getSaldoConta();
	}
	
	public boolean fazTransferencia(Conta contaOrigem, Conta contaDestino, Transacao transacao) {
		if(contaOrigem.getSaldoConta() >= transacao.getValorTransacao()) {
		contaOrigem.setSaldoConta(contaOrigem.getSaldoConta() - transacao.getValorTransacao());
		JOptionPane.showMessageDialog(null,"Transferencia efetuada com sucesso");
		//double soma = (contaDestino.getSaldoConta() + transacao.getValorTransacao());
		//contaOrigem.setSaldoConta(resto);
		//contaDestino.setSaldoConta(soma);
		this.criarTransferencia(transacao, contaOrigem); 
			ContaService contaService = new ContaService();
			contaService.atualizar(contaOrigem);
			contaService.atualizar(contaDestino);
		}
		else {
			JOptionPane.showMessageDialog(null, "Você não tem saldo suficiente para realizar esta transação !");
		return false;
		}
		return true;
	}
}