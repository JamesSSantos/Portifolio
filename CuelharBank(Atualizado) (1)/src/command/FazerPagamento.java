package command;

import java.io.IOException;
import java.util.ArrayList;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import model.Pagamento;
import model.TipoTransacao;
import model.Transacao;
import model.Agencia;
import model.Conta;
import service.PagamentoService;
import service.TransacaoService;

public class FazerPagamento implements Command{

	@SuppressWarnings("unused")
	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Conta contAutenticado = (Conta) request.getSession().getAttribute("contAutenticado");
		Double pValorPagamento = Double.parseDouble(request.getParameter("valorPagamento"));
		String pSaldoConta = request.getParameter("saldoConta");
		String pIdentificacaoPagamento = request.getParameter("identificacaoPagamento");
		String pIdTipoTransacao = request.getParameter("idTipoTransacao");
		
		//SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
		Timestamp dtPagamento = new Timestamp(System.currentTimeMillis());
		
		int idTipoTransacao = 0;
		//double valorPagamento = 0.0;
		Date dtVencimento = null;
		
		
		try {
			idTipoTransacao = Integer.parseInt(pIdTipoTransacao);
			//valorPagamento = Double.parseDouble(pValorPagamento);
		}catch(NumberFormatException e){
		}
		
		Agencia agencia = new Agencia();
		TipoTransacao tipoTransacao = new TipoTransacao();
		Transacao transacao = new Transacao();
		TransacaoService service = new TransacaoService();
		Conta conta = new Conta();
	
	
		agencia.setIdAgencia(contAutenticado.getAgencia().getIdAgencia());
		conta.setNumeroConta(contAutenticado.getNumeroConta());
		conta.setSenhaConta(contAutenticado.getSenhaConta());
		conta.setSaldoConta(contAutenticado.getSaldoConta());
		conta.setAgencia(agencia);
		transacao.setConta(conta);
		tipoTransacao.setIdTipoTransacao(idTipoTransacao);
		transacao.setTipoTransacao(tipoTransacao);
		transacao.setIdentificacaoTransacao(pIdentificacaoPagamento);
		transacao.setValorTransacao(pValorPagamento);
		transacao.setDtTransacao(dtPagamento);
	
		service.fazPagamento(conta, transacao);
		
		RequestDispatcher view = null;
		HttpSession session = request.getSession();
		
		ArrayList<Transacao> lista = new ArrayList<>();
		lista.add(transacao);
		
		session.setAttribute("lista", lista);
		request.setAttribute("transacao", transacao);
		view = request.getRequestDispatcher("Pagamento.jsp");

		view.forward(request, response);		
	}
}