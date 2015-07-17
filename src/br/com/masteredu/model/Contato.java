package br.com.masteredu.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import br.com.masteredu.model.enums.TipoContato;

@Entity
public class Contato {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
		
	@Enumerated(EnumType.STRING)
	private TipoContato tipoContato;

	private String numero;
	
	@ManyToOne
	@JoinColumn(name = "id_aluno")
	private Aluno aluno;
	
	@ManyToOne
	@JoinColumn(name = "id_responsavel")
	private Responsavel responsavel;
	
	@ManyToOne
	@JoinColumn(name = "id_unidade")
	private Unidade unidade;
	
	@ManyToOne
	@JoinColumn(name = "id_professor")
	private Professor professor;
	
	@ManyToOne
	@JoinColumn(name="id_funcionario")
	private Funcionario funcionario;

	
	// GETTERs AND SETTERs
	public long getId() {
		return id;
	}
	
	public TipoContato getTipoContato() {
		return tipoContato;
	}

	public void setTipoContato(TipoContato tipoContato) {
		this.tipoContato = tipoContato;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}

	public Responsavel getResponsavel() {
		return responsavel;
	}

	public void setResponsavel(Responsavel responsavel) {
		this.responsavel = responsavel;
	}

	public Unidade getUnidade() {
		return unidade;
	}

	public void setUnidade(Unidade unidade) {
		this.unidade = unidade;
	}

	public Professor getProfessor() {
		return professor;
	}

	public void setProfessor(Professor professor) {
		this.professor = professor;
	}

	public Funcionario getFuncionario() {
		return funcionario;
	}

	public void setFuncionario(Funcionario funcionario) {
		this.funcionario = funcionario;
	}


}
