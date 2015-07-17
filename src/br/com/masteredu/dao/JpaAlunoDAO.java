package br.com.masteredu.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.masteredu.dao.interfaces.IAlunoDAO;
import br.com.masteredu.model.Aluno;

@Repository
public class JpaAlunoDAO implements IAlunoDAO{
	
	@PersistenceContext
	private EntityManager manager;

	public void adicionar(Aluno aluno) {
		manager.persist(aluno);
	}

	public void editar(Aluno aluno) {
		manager.merge(aluno);
	}

	public List<Aluno> listar() {
		return manager.createQuery("select a from Aluno a").getResultList();
	}
	
	public Aluno buscarPorId(long id) {
		return manager.find(Aluno.class, id);
	}

	public void excluir(Aluno aluno) {
		Aluno alunoARemover = buscarPorId(aluno.getId());
	      manager.remove(alunoARemover);
	}

}
