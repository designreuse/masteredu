package br.com.masteredu.model;

import java.util.List;

import javax.persistence.*;

@Entity
public class Boletim {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@ManyToOne
	@JoinColumn(name = "id_turma")
	private Turma turma;
	
	@ManyToMany
	@JoinTable(name = "boletins_disciplinas")
	private List<Disciplina> disciplinas;
	
	@OneToMany(mappedBy="boletim")
	private List<Nota> notas;
	
	@OneToMany(mappedBy="boletim")
	private List<Conceito> conceitos;
	
	@ManyToOne
	@JoinColumn(name="id_aluno")
	private Aluno aluno;

}
