package br.com.masteredu.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Ocorrencia {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	private String descricao;
	
	private String motivo;
	
	@Temporal(TemporalType.DATE)
	private Calendar dataOcorrencia;
	
	@ManyToOne
	@JoinColumn(name = "id_aluno")
	private Aluno aluno;

	
	// GETTERs AND SETTERs
	public long getId() {
		return id;
	}
	
	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getMotivo() {
		return motivo;
	}

	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}

	public Calendar getDataOcorrencia() {
		return dataOcorrencia;
	}

	public void setDataOcorrencia(Calendar dataOcorrencia) {
		this.dataOcorrencia = dataOcorrencia;
	}

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}
	
	

}
