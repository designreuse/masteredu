package br.com.masteredu.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.masteredu.dao.interfaces.ITurmaDAO;
import br.com.masteredu.model.Professor;
import br.com.masteredu.model.Turma;

@Repository
public class JpaTurmaDAO implements ITurmaDAO{
	
	@PersistenceContext
	private EntityManager manager;
	
	public void adicionar(Turma turma) {
		manager.persist(turma);
	}

	public void editar(Turma turma) {
		manager.merge(turma);
	}

	public List<Turma> listar() {
		return manager.createQuery("select t from Turma t").getResultList();
	}
	
	public Turma buscarPorId(long id) {
		return manager.find(Turma.class, id);
	}

	public void excluir(Turma turma) {
		Turma turmaARemover = buscarPorId(turma.getId());
	      manager.remove(turmaARemover);
	}

}
