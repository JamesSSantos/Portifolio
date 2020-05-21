package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Transacao;
import service.TransacaoService;

public class ListarTransacao implements Command{
	
		@Override
		public void executar(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			TransacaoService tran = new TransacaoService();
			ArrayList<Transacao> listando = new ArrayList<Transacao>();
			HttpSession session = request.getSession();
			
			String dataInicio = request.getParameter("extratoInicio");
			String dataFinal = request.getParameter("extratoFim");
			
			Transacao transacao = new Transacao();
			
			transacao.setDataInicio(dataInicio);
			transacao.setDataFim(dataFinal);
			
			listando = tran.listarTransacao(transacao);
			session.setAttribute("lista", listando);
			
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("Extrato.jsp");
			dispatcher.forward(request, response);
		}

}
