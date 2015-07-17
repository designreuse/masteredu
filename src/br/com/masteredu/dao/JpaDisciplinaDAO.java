package br.com.masteredu.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.masteredu.dao.interfaces.IDisciplinaDAO;
import br.com.masteredu.model.Disciplina;


@Repository
public class JpaDisciplinaDAO implements IDisciplinaDAO{
	
	@PersistenceContext
	private EntityManager manager;

	public void adicionar(Disciplina disciplina) {
		manager.persist(disciplina);
	}

	public void editar(Disciplina disciplina) {
		manager.merge(disciplina);
	}

	public List<Disciplina> listar() {
		return manager.createQuery("select d from Disciplina d").getResultList();
	}
	
	public Disciplina buscarPorId(long id) {
		return manager.find(Disciplina.class, id);
	}

	public void excluir(Disciplina disciplina) {
		Disciplina disciplinaARemover = buscarPorId(disciplina.getId());
	      manager.remove(disciplinaARemover);
	}

}
