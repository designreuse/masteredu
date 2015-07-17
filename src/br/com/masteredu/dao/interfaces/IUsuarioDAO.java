package br.com.masteredu.dao.interfaces;

import br.com.masteredu.model.Usuario;
import br.com.masteredu.persistence.IDAO;

public interface IUsuarioDAO extends IDAO<Usuario> {
	
	Usuario getUsuario(String login, String senha);

}
