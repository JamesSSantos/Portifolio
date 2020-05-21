package command;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Agencia;
import model.Conta;
import model.TipoTransacao;
import model.Transacao;
import service.TransacaoService;

public class FazerTransferencia implements Command {

	@SuppressWarnings("unused")
	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Conta contAutenticado = (Conta) request.getSession().getAttribute("contAutenticado");
		String pNumeroAgenciaDestino = request.getParameter("agenciaDestino");
		String pNumeroContaDestino = request.getParameter("contaDestino");
		long pCpfBeneficiadoTransferencia = Long.parseLong(request.getParameter("cpfBeneficiadoTransferencia"));
		Double valorTransferencia = Double.parseDouble(request.getParameter("valorTransferencia"));
		String IdentificacaoTransferencia = request.getParameter("identificacaoTransferencia");
		Timestamp dtTransferencia = new Timestamp(System.currentTimeMillis());
		
		Integer numeroContaDestino = 0;
		int numeroAgenciaDestino = 0;
		
		try {
			numeroAgenciaDestino = Integer.parseInt(pNumeroAgenciaDestino);
			numeroContaDestino = Integer.parseInt(pNumeroContaDestino);	
		}catch(NumberFormatException e) {
		System.out.println(e.getMessage());
		}
		
		Transacao transacao = new Transacao();
		TipoTransacao tipoTransacao = new TipoTransacao();
		Conta contaOrigem = new Conta();
		Conta contaDestino = new Conta();
		Agencia agenciaOrigem = new Agencia();
		Agencia agenciaDestino = new Agencia();
		TransacaoService service = new TransacaoService();
	
		//tipoConta.setDescricaoTipoConta(contAutenticado.getTipoConta().getDescricaoTipoConta());
		//tipoConta.setIdTipoConta(contAutenticado.getTipoConta().getIdTipoConta());

		contaOrigem.setNumeroConta(contAutenticado.getNumeroConta());
		agenciaOrigem.setIdAgencia(contAutenticado.getAgencia().getIdAgencia());
		contaOrigem.setSaldoConta(contAutenticado.getSaldoConta());
		contaOrigem.setAgencia(agenciaOrigem);
		
		
		contaDestino.setNumeroConta(numeroContaDestino);
		agenciaDestino.setIdAgencia(numeroAgenciaDestino);
		contaDestino.setAgencia(agenciaDestino);
		
		transacao.setTipoTransacao(tipoTransacao);
		transacao.setCpfBeneficiadoTransferencia(pCpfBeneficiadoTransferencia);
		transacao.setValorTransacao(valorTransferencia);
		transacao.setIdentificacaoTransacao(IdentificacaoTransferencia);
		transacao.setDtTransacao(dtTransferencia);
		
		service.fazTransferencia(contaOrigem, contaDestino, transacao);
		RequestDispatcher view = null;
		HttpSession session = request.getSession();
		
		ArrayList<Transacao> lista = new ArrayList<>();
		lista.add(transacao);
		
		session.setAttribute("lista", lista);
		session.setAttribute("transacao", transacao);
		view = request.getRequestDispatcher("Transferencia.jsp");
		view.forward(request, response);	
	}
}