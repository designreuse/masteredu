package br.com.masteredu.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import br.com.masteredu.dao.interfaces.IProfessorDAO;
import br.com.masteredu.model.Professor;
import br.com.masteredu.model.Turma;
import br.com.masteredu.model.Usuario;

@Repository
public class JpaProfessorDAO implements IProfessorDAO{
	
	@PersistenceContext
	private EntityManager manager;
	
	public void adicionar(Professor professor) {
		manager.persist(professor);
	}

	public void editar(Professor professor) {
		manager.merge(professor);
	}

	public List<Professor> listar() {
		return manager.createQuery("select p from Professor p").getResultList();
	}
	
	public Professor buscarPorId(long id) {
		return manager.find(Professor.class, id);
	}

	public void excluir(Professor professor) {
		Professor professorARemover = buscarPorId(professor.getId());
	      manager.remove(professorARemover);
	}

}
