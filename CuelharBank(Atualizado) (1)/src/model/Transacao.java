package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class Transacao implements Serializable{
	private static final long serialVersionUID = 1L;
	private int idTransacao;
	private String identificacaoTransacao;
	private double valorTransacao;
	private Timestamp dtTransacao;
	private long cpfBeneficiadoTransferencia;
	Conta conta;
	private TipoTransacao tipoTransacao;
	private String dataInicio;
	private String dataFim;
	
	
	public Transacao (int idTransacao, String identificacaoTransacao, double valorTransacao, Timestamp dtTransacao, 
			long cpfBeneficiadoTransferencia, Conta conta, TipoTransacao tipoTransacao, String dataInicio, String dataFim) {
		super();
		this.idTransacao = idTransacao;
		this.identificacaoTransacao = identificacaoTransacao;
		this.valorTransacao = valorTransacao;
		this.dtTransacao = dtTransacao;
		this.cpfBeneficiadoTransferencia = cpfBeneficiadoTransferencia;
		this.conta = conta;
		this.tipoTransacao = tipoTransacao;
		this.dataInicio = dataInicio;
		this.dataFim = dataFim;
	}
	
	public Transacao() {
		
	}
	
	public int getIdTransacao() {
		return idTransacao;
	}
	
	public String getIdentificacaoTransacao() {
		return identificacaoTransacao;
	}
	
	public double getValorTransacao() {
		return valorTransacao;
	}
	
	public Timestamp getDtTransacao() {
		return dtTransacao;
	}
	
	public long getCpfBeneficiadoTransferencia(){
		return cpfBeneficiadoTransferencia;
	}
	
	public Conta getConta() {
		return conta;
	}
	
	public TipoTransacao getTipoTransacao() {
		return tipoTransacao;
	}
	
	public String getDataInicio() {
		return dataInicio;
	}
	
	public String getDataFim() {
		return dataFim;
	}
	
	public void setIdTransacao(int idTransacao) {
		this.idTransacao = idTransacao;
	}
	
	public void setIdentificacaoTransacao(String identificacaoTransacao) {
		this.identificacaoTransacao = identificacaoTransacao;
	}
	
	public void setValorTransacao(double valorTransacao) {
		this.valorTransacao = valorTransacao;
	}
	
	public void setDtTransacao(Timestamp dtTransacao) {
		this.dtTransacao = dtTransacao;
	}
	
	public void setCpfBeneficiadoTransferencia(long cpfBeneficiadoTransferencia) {
		this.cpfBeneficiadoTransferencia = cpfBeneficiadoTransferencia;
	}
	
	public void setConta(Conta conta) {
		this.conta = conta;
	}
	
	public void setTipoTransacao(TipoTransacao tipoTransacao) {
		this.tipoTransacao = tipoTransacao;
	}
	
	public void setDataInicio(String dataInicio) {
		this.dataInicio = dataInicio;
	}
	
	public void setDataFim(String dataFim) {
		this.dataFim = dataFim;
	}
	
	@Override
	public String toString() {
		return "Transaçao [Id da Transaçao=" + idTransacao + ", Identificacao Transacao=" + identificacaoTransacao + ", Valor Transacao=" + valorTransacao + ", "
				+ "Data Transacao=" + dtTransacao + ", Cpf do Beneficiado Transferencia=" + cpfBeneficiadoTransferencia + ", Conta=" + conta +", "
						+ "Tipo Transacao=" + tipoTransacao +", Data Inicio=" + dataInicio + ", Data Final=" + dataFim + "]";
	}
	
	public boolean equals (Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Transacao other = (Transacao) obj;
		if (idTransacao != other.idTransacao)
			return false;
		if (identificacaoTransacao == null) {
			if(other.identificacaoTransacao != null)
				return false;
		}else if (!identificacaoTransacao.equals(other.identificacaoTransacao))
			return false;
		if (valorTransacao != other.valorTransacao)
			return false;
		if (dtTransacao != other.dtTransacao)
			return false;
		if (cpfBeneficiadoTransferencia != other.cpfBeneficiadoTransferencia)
			return false;
		if (conta != other.conta)
			return false;
		if (tipoTransacao != other.tipoTransacao)
			return false;
		if (dataInicio != other.dataInicio)
			return false;
		if (dataFim != other.dataFim)
			return false;
		return true;
	}
}
