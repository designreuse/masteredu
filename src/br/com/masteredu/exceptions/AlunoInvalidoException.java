package br.com.masteredu.exceptions;

public class AlunoInvalidoException extends Exception {
	
	public AlunoInvalidoException() {
		super("Aluno n�o cadastrado corretamente.");
	}

}
