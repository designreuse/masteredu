package br.com.masteredu.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import br.com.masteredu.dao.interfaces.IUsuarioDAO;
import br.com.masteredu.model.Usuario;

@Repository
public class JpaUsuarioDAO implements IUsuarioDAO{

	@PersistenceContext
	private EntityManager manager;

	@Override
	public void adicionar(Usuario usuario) {
		manager.persist(usuario);
	}

	@Override
	public void editar(Usuario usuario) {
		manager.merge(usuario);
	}

	@Override
	public List<Usuario> listar() {
		return manager.createQuery("select u from Usuario u").getResultList();
	}

	@Override
	public Usuario buscarPorId(long id) {
		return manager.find(Usuario.class, id);
	}

	@Override
	public void excluir(Usuario usuario) {
		Usuario usuarioARemover = buscarPorId(usuario.getId());
	      manager.remove(usuarioARemover);
	}

	@Override
	public Usuario verificaSeExiste(String login, String senha) {		
		String consulta = "select u from Usuario u where u.login = :login and u.senha = :senha";
		TypedQuery<Usuario> query =
		manager.createQuery(consulta, Usuario.class);
		query.setParameter("login", login);
		query.setParameter("senha", senha);
		
		Usuario usuario = query.getSingleResult();
		
		return usuario;
	}
	
	
	
	
	
	
	
	
}
