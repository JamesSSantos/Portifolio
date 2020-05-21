package service;

import java.util.ArrayList;

import javax.swing.JOptionPane;
import model.Conta;
import model.Transferencia;
import dao.TransferenciaDAO;

//Est� classe chama o ClienteDAO, ele executa os metodos da classe DAO.

public class TransferenciaServiceOLD {
	TransferenciaDAO dao = new TransferenciaDAO();
	
	public boolean criar(Transferencia transferencia) {
		return dao.criar(transferencia);
	}
	
	public void atualizar(Transferencia transferencia) {
		dao.atualizar(transferencia);
	}
	
	public void excluir (int idTransferencia) {
		dao.excluir(idTransferencia);
	}
	
	public Transferencia carregar(int idTransferencia) {
		return dao.carregar(idTransferencia);
	}
	
	public ArrayList<Transferencia> listarTransferencia(String chave) {
		return dao.listarTransferencia(chave);
	}
	
	public boolean fazTransferencia(Conta contaOrigem, Conta contaDestino, Transferencia transferencia) {
		boolean resultado = false;
		System.out.println("ttttttt:"+contaOrigem.getTipoConta().getDescricaoTipoConta());
		if(contaOrigem.getTipoConta().getDescricaoTipoConta().equals("Conta Corrente")) {
			resultado =	fazTransferenciaContaCorrente(contaOrigem, contaDestino, transferencia);
		}else if(contaOrigem.getTipoConta().getDescricaoTipoConta().equals("Conta Poupan�a")) {
			resultado =	fazTransferenciaContaPoupanca(contaOrigem, contaDestino, transferencia);				
		}
		return resultado;
	}
	
	public boolean fazTransferenciaContaCorrente(Conta contaOrigem, Conta contaDestino, Transferencia transferencia) {
		if(contaOrigem.getSaldoConta() >= transferencia.getValorTransferencia()) {
		double resto = (contaOrigem.getSaldoConta() - transferencia.getValorTransferencia());
		double soma = (contaDestino.getSaldoConta() + transferencia.getValorTransferencia());
		contaOrigem.setSaldoConta(resto);
		contaDestino.setSaldoConta(soma);
		transferencia.setIdConta(contaOrigem.getNumeroConta());
		if (this.criar(transferencia)) {
			ContaService contaService = new ContaService();
			contaService.atualizar(contaOrigem);
			contaService.atualizar(contaDestino);
			JOptionPane.showMessageDialog(null, "Transa��o efetuada com sucesso!!");
			return true;
		}else {
			return false;
		}
		}
		else {
			JOptionPane.showMessageDialog(null, "Voc� n�o possui saldo suficiente para realizar a opera��o!!");
		}
		return false;
	}
	
	public boolean fazTransferenciaContaPoupanca(Conta contaOrigem, Conta contaDestino, Transferencia transferencia) {
		if(contaOrigem.getSaldoConta() >= transferencia.getValorTransferencia()) {
			double resto = (contaOrigem.getSaldoConta() - transferencia.getValorTransferencia());
			contaOrigem.setSaldoConta(resto);
			double saldoConta = contaDestino.getSaldoConta() + transferencia.getValorTransferencia();
			contaDestino.setSaldoConta(saldoConta);
			transferencia.setIdConta(contaOrigem.getNumeroConta());
			if (this.criar(transferencia)) {
				ContaService contaService = new ContaService();
				contaService.atualizar(contaOrigem);
				contaService.atualizar(contaDestino);
				JOptionPane.showMessageDialog(null, "Transa��o efetuada com sucesso!!");
				return true;
			}else {
				JOptionPane.showMessageDialog(null, "Voc� n�o possui saldo suficiente para realizar a opera��o!!");
			}
		}
		return false;
	}
}