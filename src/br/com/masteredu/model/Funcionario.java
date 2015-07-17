package br.com.masteredu.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Funcionario extends Usuario {
		
	@OneToOne
	private Endereco endereco;
	
	@OneToMany(mappedBy="funcionario")
	private List<Contato> contatos;

}
