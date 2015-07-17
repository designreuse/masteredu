package br.com.masteredu.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import br.com.masteredu.model.enums.Turno;

@Entity
public class Turma {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	private String descricao;
	
	private String grau;
	
	@Enumerated(EnumType.STRING)
	private Turno turno;
	
	@ManyToOne
	@JoinColumn(name = "id_horario_de_aula")
	private HorarioDeAula horarioDeAula;
	
	@OneToMany(mappedBy = "turma")
	private List<Matricula> matriculas;
	
	@OneToMany(mappedBy = "turma")
	private List<Boletim> boletins;
	
	@ManyToMany(mappedBy = "turmas")
	private List<Professor> professores;
	
	@ManyToMany
	@JoinTable(name = "turmas_disciplinas")
	private List<Disciplina> disciplinas;

	
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

	public String getGrau() {
		return grau;
	}

	public void setGrau(String grau) {
		this.grau = grau;
	}

	public Turno getTurno() {
		return turno;
	}

	public void setTurno(Turno turno) {
		this.turno = turno;
	}

	public HorarioDeAula getHorarioDeAula() {
		return horarioDeAula;
	}

	public void setHorarioDeAula(HorarioDeAula horarioDeAula) {
		this.horarioDeAula = horarioDeAula;
	}

	public List<Matricula> getMatriculas() {
		return matriculas;
	}

	public void setMatriculas(List<Matricula> matriculas) {
		this.matriculas = matriculas;
	}

	public List<Boletim> getBoletins() {
		return boletins;
	}

	public void setBoletins(List<Boletim> boletins) {
		this.boletins = boletins;
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

}
