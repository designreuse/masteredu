package br.com.masteredu.exceptions;

public class AlunoInvalidoException extends Exception {
	
	public AlunoInvalidoException() {
		super("Aluno não cadastrado corretamente.");
	}

}
