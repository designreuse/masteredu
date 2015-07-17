package br.com.masteredu.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Disciplina {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	private String descricao;
	
	@ManyToOne
	@JoinColumn(name = "id_unidade")
	private Unidade unidade;
	
	@OneToMany(mappedBy = "disciplina")
	private List<Questao> questoes;
	
	@OneToMany(mappedBy = "disciplina")
	private List<Prova> provas;
	
	@ManyToMany(mappedBy = "disciplinas")
	private List<Professor> professores;
	
	@ManyToMany(mappedBy = "disciplinas")
	private List<Turma> turmas;
	
	@ManyToMany(mappedBy = "disciplinas")
	private List<Boletim> boletins;
	
	
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

	public Unidade getUnidade() {
		return unidade;
	}

	public void setUnidade(Unidade unidade) {
		this.unidade = unidade;
	}

	public List<Questao> getQuestoes() {
		return questoes;
	}

	public void setQuestoes(List<Questao> questoes) {
		this.questoes = questoes;
	}

	public List<Prova> getProvas() {
		return provas;
	}

	public void setProvas(List<Prova> provas) {
		this.provas = provas;
	}

	public List<Professor> getProfessores() {
		return professores;
	}

	public void setProfessores(List<Professor> professores) {
		this.professores = professores;
	}

	public List<Turma> getTurmas() {
		return turmas;
	}

	public void setTurmas(List<Turma> turmas) {
		this.turmas = turmas;
	}

	public List<Boletim> getBoletins() {
		return boletins;
	}

	public void setBoletins(List<Boletim> boletins) {
		this.boletins = boletins;
	}
	
}
