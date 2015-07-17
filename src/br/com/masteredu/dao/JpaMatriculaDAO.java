package br.com.masteredu.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.masteredu.dao.interfaces.IMatriculaDAO;
import br.com.masteredu.model.Matricula;

@Repository
public class JpaMatriculaDAO implements IMatriculaDAO {
	
	@PersistenceContext
	private EntityManager manager;

	public void adicionar(Matricula matricula) {
		manager.persist(matricula);
	}

	public void editar(Matricula matricula) {
		manager.merge(matricula);
	}

	public List<Matricula> listar() {
		return manager.createQuery("select m from Matricula m").getResultList();
	}
	
	public Matricula buscarPorId(long id) {
		return manager.find(Matricula.class, id);
	}

	public void excluir(Matricula matricula) {
		Matricula matriculaARemover = buscarPorId(matricula.getCodigo());
	      manager.remove(matriculaARemover);
	}
	
}
