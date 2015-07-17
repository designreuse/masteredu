package br.com.masteredu.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.masteredu.dao.interfaces.IUnidadeDAO;
import br.com.masteredu.model.Aluno;
import br.com.masteredu.model.Unidade;

@Repository
public class JpaUnidadeDAO implements IUnidadeDAO {

	@PersistenceContext
	private EntityManager manager;

	@Override
	public void adicionar(Unidade unidade) {
		manager.persist(unidade);
	}

	@Override
	public void editar(Unidade unidade) {
		manager.merge(unidade);
	}

	@Override
	public List<Unidade> listar() {
		return manager.createQuery("select u from Unidade u").getResultList();
	}

	@Override
	public Unidade buscarPorId(long id) {
		return manager.find(Unidade.class, id);
	}

	@Override
	public void excluir(Unidade unidade) {
		Unidade unidadeARemover = buscarPorId(unidade.getId());
	      manager.remove(unidadeARemover);
	}
}
