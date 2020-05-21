package model;

public class TipoTransacao {
	
	private int idTipoTransacao;
	private String identificacaoTipoTransacao;
	
	public TipoTransacao() {
		
	}
	
	public TipoTransacao(int idTipoTransacao, String identificacaoTipoTransacao) {
		super();
		this.idTipoTransacao = idTipoTransacao;
		this.identificacaoTipoTransacao = identificacaoTipoTransacao;
	}
	
	public int getIdTipoTransacao(){
		return idTipoTransacao;
	}
	
	public String getIdentificacaoTipoTransacao() {
		return identificacaoTipoTransacao;
	}
	
	public void setIdTipoTransacao(int idTipoTransacao) {
		this.idTipoTransacao = idTipoTransacao;
	}
	
	public void setIdentificacaoTipoTransacao(String identificacaoTipoTransacao) {
		this.identificacaoTipoTransacao = identificacaoTipoTransacao;
	}
	
	@Override
	public String toString() {
		return "Tipo Transacao [idTipoTransacao=" + idTipoTransacao + ", Identificação do Tipo Transacao=" + identificacaoTipoTransacao + "]";
	}
	
	@Override
	public boolean equals (Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		TipoTransacao other = (TipoTransacao) obj;
		if (identificacaoTipoTransacao == null) {
			if(other.identificacaoTipoTransacao != null)
				return false;
		}else if (!identificacaoTipoTransacao.equals(other.identificacaoTipoTransacao))
			return false;
		if (idTipoTransacao != other.idTipoTransacao)
			return false;
		return true;
	}

}
