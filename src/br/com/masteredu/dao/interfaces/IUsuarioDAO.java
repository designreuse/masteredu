package br.com.masteredu.dao.interfaces;

import br.com.masteredu.model.Usuario;
import br.com.masteredu.persistence.IDAO;

public interface IUsuarioDAO extends IDAO<Usuario> {
	
	Usuario verificaSeExiste(String login, String senha);

}
