package br.com.masteredu.model;

import java.util.Calendar;
import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.IndexColumn;

@Entity
public class Professor {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	private String nome;
	
	@Temporal(TemporalType.DATE)
	private Calendar dataEntrada;

	@Temporal(TemporalType.DATE)
	private Calendar dataSaida;
	
	@Temporal(TemporalType.DATE)
	private Calendar dataNascimento;
	
	private String email;
	
	private String observacao;
	
	private String rg;
	
	private String cpf;
	
	@OneToOne
	private Endereco endereco;
	
	@OneToOne
	Usuario usuario;
	
	@OneToMany(mappedBy = "professor")
	private List<Contato> contatos;

	@ManyToOne
	@JoinColumn(name = "id_unidade")
	private Unidade unidade;
	
	@ManyToMany(fetch= FetchType.EAGER) 
	@JoinTable(name = "professores_turmas")
	private List<Turma> turmas;
	
	@ManyToMany(fetch= FetchType.EAGER) 
	@JoinTable(name = "professores_disciplinas")
	private Set<Disciplina> disciplinas;
	
	
	// GETTERs AND SETTERs	
	
	public String getNome() {
		return nome;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public long getId() {
		return id;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Calendar getDataEntrada() {
		return dataEntrada;
	}

	public void setDataEntrada(Calendar dataEntrada) {
		this.dataEntrada = dataEntrada;
	}

	public Calendar getDataSaida() {
		return dataSaida;
	}

	public void setDataSaida(Calendar dataSaida) {
		this.dataSaida = dataSaida;
	}

	public Calendar getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Calendar dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
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

	public Unidade getUnidade() {
		return unidade;
	}

	public void setUnidade(Unidade unidade) {
		this.unidade = unidade;
	}

	public List<Turma> getTurmas() {
		return turmas;
	}

	public void setTurmas(List<Turma> turmas) {
		this.turmas = turmas;
	}

	public Set<Disciplina> getDisciplinas() {
		return disciplinas;
	}

	public void setDisciplinas(Set<Disciplina> disciplinas) {
		this.disciplinas = disciplinas;
	}
	
	
}
