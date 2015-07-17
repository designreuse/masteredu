package br.com.masteredu.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class FichaMedica {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	private String observacao;
	
	private String necessidadeEspecial;
	
	private String doencaCronica;
	
	private String tipoSanguineo;
	
	private String restricaoMedicamento;
	
	@OneToOne(mappedBy="fichaMedica")
	private Aluno aluno;

	
	// GETTERs AND SETTERs
	public long getId() {
		return id;
	}
	
	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public String getNecessidadeEspecial() {
		return necessidadeEspecial;
	}

	public void setNecessidadeEspecial(String necessidadeEspecial) {
		this.necessidadeEspecial = necessidadeEspecial;
	}

	public String getDoencaCronica() {
		return doencaCronica;
	}

	public void setDoencaCronica(String doencaCronica) {
		this.doencaCronica = doencaCronica;
	}

	public String getTipoSanguineo() {
		return tipoSanguineo;
	}

	public void setTipoSanguineo(String tipoSanguineo) {
		this.tipoSanguineo = tipoSanguineo;
	}

	public String getRestricaoMedicamento() {
		return restricaoMedicamento;
	}

	public void setRestricaoMedicamento(String restricaoMedicamento) {
		this.restricaoMedicamento = restricaoMedicamento;
	}

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}
	

}
