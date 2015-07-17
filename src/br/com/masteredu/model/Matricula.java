package br.com.masteredu.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.com.masteredu.model.enums.Situacao;

@Entity
public class Matricula {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long codigo;
	
	private String anoLetivo;
	
	@Enumerated(EnumType.STRING)
	private Situacao situacao;
	
	private int numeroChamada;
	
	@Temporal(TemporalType.DATE)
	private Calendar dataCadastro;

	@Temporal(TemporalType.DATE)
	private Calendar dataSaida;
	
	@ManyToOne
	@JoinColumn(name = "id_turma")
	private Turma turma;
	
	@ManyToOne
	@JoinColumn(name = "id_unidade")
	private Unidade unidade;

	@OneToOne(mappedBy="matricula")
	private Aluno aluno;

	
	// GETTERs AND SETTERs
	public long getCodigo() {
		return codigo;
	}
	
	public String getAnoLetivo() {
		return anoLetivo;
	}

	public void setAnoLetivo(String anoLetivo) {
		this.anoLetivo = anoLetivo;
	}

	public Situacao getSituacao() {
		return situacao;
	}

	public void setSituacao(Situacao situacao) {
		this.situacao = situacao;
	}

	public int getNumeroChamada() {
		return numeroChamada;
	}

	public void setNumeroChamada(int numeroChamada) {
		this.numeroChamada = numeroChamada;
	}

	public Calendar getDataCadastro() {
		return dataCadastro;
	}

	public void setDataCadastro(Calendar dataCadastro) {
		this.dataCadastro = dataCadastro;
	}

	public Calendar getDataSaida() {
		return dataSaida;
	}

	public void setDataSaida(Calendar dataSaida) {
		this.dataSaida = dataSaida;
	}

	public Turma getTurma() {
		return turma;
	}

	public void setTurma(Turma turma) {
		this.turma = turma;
	}

	public Unidade getUnidade() {
		return unidade;
	}

	public void setUnidade(Unidade unidade) {
		this.unidade = unidade;
	}

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}
	
	
	

}
