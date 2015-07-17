package br.com.masteredu.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.masteredu.dao.interfaces.IOcorrenciaDAO;
import br.com.masteredu.model.Ocorrencia;

@Repository
public class JpaOcorrenciaDAO implements IOcorrenciaDAO{
	
	@PersistenceContext
	private EntityManager manager;

	public void adicionar(Ocorrencia ocorrencia) {
		manager.persist(ocorrencia);
	}

	public void editar(Ocorrencia ocorrencia) {
		manager.merge(ocorrencia);
	}

	public List<Ocorrencia> listar() {
		return manager.createQuery("select o from Ocorrencia o").getResultList();
	}
	
	public Ocorrencia buscarPorId(long id) {
		return manager.find(Ocorrencia.class, id);
	}

	public void excluir(Ocorrencia Ocorrencia) {
		Ocorrencia ocorrenciaARemover = buscarPorId(Ocorrencia.getId());
	      manager.remove(ocorrenciaARemover);
	}

}
