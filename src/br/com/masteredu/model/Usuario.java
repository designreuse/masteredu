package br.com.masteredu.model;

import java.util.Calendar;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.com.masteredu.model.enums.Situacao;

@MappedSuperclass
public abstract class Usuario {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	private String login;
	
	private String senha;
	
	@Enumerated(EnumType.STRING)
	private Situacao situacao;
	
	@Temporal(TemporalType.DATE)
	private Calendar ultimoLogin;
	

	// GETTERs AND SETTERs
	public long getId() {
		return id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public Situacao getSituacao() {
		return situacao;
	}

	public void setSituacao(Situacao situacao) {
		this.situacao = situacao;
	}
	
	public Calendar getUltimoLogin() {
		return ultimoLogin;
	}

	public void setUltimoLogin(Calendar ultimoLogin) {
		this.ultimoLogin = ultimoLogin;
	}
	
}
