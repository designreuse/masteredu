package br.com.masteredu.exceptions;

public class ProfessorInvalidoException extends Exception {
	
	public ProfessorInvalidoException() {
		super("Professor n�o foi cadastrado corretamente.");
	}

}
