package br.com.masteredu.exceptions;

public class UsuarioInexistenteException extends Exception {
	
	public UsuarioInexistenteException () {
		super("Usu�rio n�o est� cadastrado no sistema.");

	}
}