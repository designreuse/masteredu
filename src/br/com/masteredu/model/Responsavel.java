package br.com.masteredu.model;

import java.util.List;

import javax.persistence.*;

@Entity
public class Responsavel extends Usuario {
	
	private String nome;
	
	private String parentesco;
	
	private String cpf;
	
	private String email;
	
	@OneToMany(mappedBy = "responsavel")
	private List<Contato> contatos;
	
	@OneToMany(mappedBy = "responsavel")
	private List<Aluno> alunos;
	
	
	// GETTERs AND SETTERs	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getParentesco() {
		return parentesco;
	}

	public void setParentesco(String parentesco) {
		this.parentesco = parentesco;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public List<Contato> getContatos() {
		return contatos;
	}

	public void setContatos(List<Contato> contatos) {
		this.contatos = contatos;
	}

	public List<Aluno> getAlunos() {
		return alunos;
	}

	public void setAlunos(List<Aluno> alunos) {
		this.alunos = alunos;
	}

}
