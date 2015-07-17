package br.com.masteredu.model;

import java.util.List;

import javax.persistence.*;

@Entity
public class HorarioDeAula {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@OneToMany(mappedBy = "horarioDeAula")
	private List<Turma> turmas;

}
