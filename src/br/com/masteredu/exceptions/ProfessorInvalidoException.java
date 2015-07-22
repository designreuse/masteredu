package br.com.masteredu.exceptions;

public class ProfessorInvalidoException extends Exception {
	
	public ProfessorInvalidoException() {
		super("Professor não foi cadastrado corretamente.");
	}

}
