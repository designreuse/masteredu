package br.com.masteredu.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.masteredu.dao.interfaces.IResponsavelDAO;
import br.com.masteredu.model.Responsavel;

@Repository
public class JpaResponsavelDAO implements IResponsavelDAO {
	
	@PersistenceContext
	private EntityManager manager;
	
	public void adicionar(Responsavel responsavel) {
		manager.persist(responsavel);
	}

	public void editar(Responsavel responsavel) {
		manager.merge(responsavel);
	}

	public List<Responsavel> listar() {
		return manager.createQuery("select r from Responsavel r").getResultList();
	}
	
	public Responsavel buscarPorId(long id) {
		return manager.find(Responsavel.class, id);
	}

	public void excluir(Responsavel responsavel) {
		Responsavel responsavelARemover = buscarPorId(responsavel.getId());
	      manager.remove(responsavelARemover);
	}

}
