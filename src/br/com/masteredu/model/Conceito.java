package br.com.masteredu.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Conceito {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	private double valor;
	
	@ManyToOne
	@JoinColumn(name="id_boletim")
	private Boletim boletim;

	
	// GETTERs AND SETTERs
	public long getId() {
		return id;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public Boletim getBoletim() {
		return boletim;
	}

	public void setBoletim(Boletim boletim) {
		this.boletim = boletim;
	}

		
}
