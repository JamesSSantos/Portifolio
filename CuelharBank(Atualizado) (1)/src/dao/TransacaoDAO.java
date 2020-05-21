package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Conta;
import model.Transacao;;

//Est� classe armazena os metodos do banco.

public class TransacaoDAO {
	public int criarPagamento(Transacao transacao, Conta conta) {
		// a linha abaixo indica ao banco quais os campos que ser�o preenchidos.
		String sqlInsert = "INSERT INTO Transacao (identificacaoTransacao, valorTransacao, dtTransacao, Conta_numeroConta, TipoTransacao_idTipoTransacao) VALUES (?, ?, ?, ?, ?)";
		try { Connection conn = ConnectionFactory.obtemConexao();
		try (PreparedStatement stm = conn.prepareStatement(sqlInsert);){
			stm.setString(1, transacao.getIdentificacaoTransacao());
			stm.setDouble(2, transacao.getValorTransacao());
			stm.setTimestamp(3, transacao.getDtTransacao());
			stm.setInt(4, conta.getNumeroConta());
			stm.setInt(5, 1);
			stm.execute();
			String sqlQuery = "SELECT LAST_INSERT_ID()";
			try(PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
				ResultSet rs = stm2.executeQuery();){
					if(rs.next()) {
						transacao.setIdTransacao(rs.getInt(1));
						}
			}catch (SQLException e) {
				e.printStackTrace();
			}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return transacao.getIdTransacao();
	}
	
	public int criarTransferencia(Transacao transacao, Conta conta) {
		// a linha abaixo indica ao banco quais os campos que ser�o preenchidos.
		String sqlInsert = "INSERT INTO Transacao (identificacaoTransacao, valorTransacao, dtTransacao, cpfBeneficiadoTransferencia, Conta_numeroConta, TipoTransacao_idTipoTransacao) VALUES (?, ?, ?, ?, ?, ?)";
		try { Connection conn = ConnectionFactory.obtemConexao();
		try (PreparedStatement stm = conn.prepareStatement(sqlInsert);){
			stm.setString(1, transacao.getIdentificacaoTransacao());
			stm.setDouble(2, transacao.getValorTransacao());
			stm.setTimestamp(3, transacao.getDtTransacao());
			stm.setLong(4, transacao.getCpfBeneficiadoTransferencia());
			stm.setInt(5, conta.getNumeroConta());
			stm.setInt(6, 2);
			stm.execute();
			String sqlQuery = "SELECT LAST_INSERT_ID()";
			try(PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
				ResultSet rs = stm2.executeQuery();){
					if(rs.next()) {
						transacao.setIdTransacao(rs.getInt(1));
						}
			}catch (SQLException e) {
				e.printStackTrace();
			}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return transacao.getIdTransacao();
	}
	
	public ArrayList<Transacao> listarTransacao(Transacao transacao){
		ArrayList<Transacao> lista = new ArrayList<Transacao>();
		String sqlSelect = "SELECT * FROM Transacao WHERE date(dtTransacao) BETWEEN ? AND ? ;";
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);){;
			stm.setString(1, transacao.getDataInicio());
			stm.setString(2, transacao.getDataFim());
			try (ResultSet rs = stm.executeQuery();){
				while(rs.next()) {
					transacao = new Transacao();
					transacao.setIdTransacao(rs.getInt("idTransacao"));
					transacao.setIdentificacaoTransacao(rs.getString("identificacaoTransacao"));
					transacao.setValorTransacao(rs.getDouble("valorTransacao"));
					transacao.setDtTransacao(rs.getTimestamp("dtTransacao"));
					lista.add(transacao);
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return lista;
	}
}