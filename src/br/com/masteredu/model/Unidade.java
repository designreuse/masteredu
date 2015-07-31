package br.com.masteredu.model;

import java.util.List;

import javax.persistence.*;

import br.com.masteredu.model.enums.TipoAvaliacao;

@Entity
public class Unidade {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	private String nome;
	
	private String cnpj;
	
	private String inscricaoEstadual;
	
	private String email;
	
	@Enumerated(EnumType.STRING)
	private TipoAvaliacao tipoAvaliacao;
	
	private double percentagemFrequenciaMinima;
	
	@OneToOne
	private Endereco endereco;
	
	@OneToMany(mappedBy = "unidade")
	private List<Contato> contatos;
	
	@OneToMany(mappedBy = "unidade")
	private List<Professor> professores;
	
	@OneToMany(mappedBy = "unidade")
	private List<Disciplina> disciplinas;
	
	@OneToMany(mappedBy = "unidade")
	private List<Matricula> matriculas;
	
	@OneToMany(mappedBy = "unidade")
	private List<Usuario> usuarios;

	
	// GETTERs AND SETTERs
	
	
	public String getNome() {
		return nome;
	}

	public long getId() {
		return id;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getInscricaoEstadual() {
		return inscricaoEstadual;
	}

	public void setInscricaoEstadual(String inscricaoEstadual) {
		this.inscricaoEstadual = inscricaoEstadual;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public TipoAvaliacao getTipoAvaliacao() {
		return tipoAvaliacao;
	}

	public void setTipoAvaliacao(TipoAvaliacao tipoAvaliacao) {
		this.tipoAvaliacao = tipoAvaliacao;
	}

	public double getPercentagemFrequenciaMinima() {
		return percentagemFrequenciaMinima;
	}

	public void setPercentagemFrequenciaMinima(double percentagemFrequenciaMinima) {
		this.percentagemFrequenciaMinima = percentagemFrequenciaMinima;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public List<Contato> getContatos() {
		return contatos;
	}

	public void setContatos(List<Contato> contatos) {
		this.contatos = contatos;
	}

	public List<Professor> getProfessores() {
		return professores;
	}

	public void setProfessores(List<Professor> professores) {
		this.professores = professores;
	}

	public List<Disciplina> getDisciplinas() {
		return disciplinas;
	}

	public void setDisciplinas(List<Disciplina> disciplinas) {
		this.disciplinas = disciplinas;
	}

	public List<Matricula> getMatriculas() {
		return matriculas;
	}

	public void setMatriculas(List<Matricula> matriculas) {
		this.matriculas = matriculas;
	}

}
