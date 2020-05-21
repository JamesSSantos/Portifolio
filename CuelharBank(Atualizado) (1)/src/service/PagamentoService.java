package service;

import java.util.ArrayList;

import javax.swing.JOptionPane;

import model.Agencia;
import model.Conta;
import model.Pagamento;
import dao.PagamentoDAO;

//Est� classe chama o ClienteDAO, ele executa os metodos da classe DAO.

public class PagamentoService {
	PagamentoDAO dao = new PagamentoDAO();
	
	public int criar(Pagamento pagamento, Conta conta, Agencia agencia){
		return dao.criar(pagamento, conta, agencia);
	}
	
	public void atualizar(Pagamento pagamento) {
		dao.atualizar(pagamento);
	}
	
	public void excluir (int idPagamento) {
		dao.excluir(idPagamento);
	}
	
	public Pagamento carregar(int idPagamento) {
		return dao.carregar(idPagamento);
	}
	
	public ArrayList<Pagamento> listarPagamento(){
		return dao.listarPagamento();
	}
	
}