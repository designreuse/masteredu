package br.com.masteredu.exceptions;

public class UsuarioInexistenteException extends Exception {
	
	public UsuarioInexistenteException () {
		super("Usuário não está cadastrado no sistema.");

	}
}