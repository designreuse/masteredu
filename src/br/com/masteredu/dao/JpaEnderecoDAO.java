package br.com.masteredu.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.masteredu.dao.interfaces.IEnderecoDAO;
import br.com.masteredu.model.Endereco;

@Repository
public class JpaEnderecoDAO implements IEnderecoDAO {
	
	@PersistenceContext
	private EntityManager manager;

	public void adicionar(Endereco endereco) {
		manager.persist(endereco);
	}

	public void editar(Endereco endereco) {
		manager.merge(endereco);
	}

	public List<Endereco> listar() {
		return manager.createQuery("select e from Endereco e").getResultList();
	}
	
	public Endereco buscarPorId(long id) {
		return manager.find(Endereco.class, id);
	}

	public void excluir(Endereco endereco) {
		Endereco enderecoARemover = buscarPorId(endereco.getId());
	      manager.remove(enderecoARemover);
	}

}
