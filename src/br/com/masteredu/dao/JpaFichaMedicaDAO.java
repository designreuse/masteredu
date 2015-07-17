package br.com.masteredu.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.masteredu.dao.interfaces.IFichaMedicaDAO;
import br.com.masteredu.model.FichaMedica;

@Repository
public class JpaFichaMedicaDAO implements IFichaMedicaDAO {
	
	@PersistenceContext
	private EntityManager manager;

	public void adicionar(FichaMedica fichaMedica) {
		manager.persist(fichaMedica);
	}

	public void editar(FichaMedica fichaMedica) {
		manager.merge(fichaMedica);
	}

	public List<FichaMedica> listar() {
		return manager.createQuery("select f from FichaMedica f").getResultList();
	}
	
	public FichaMedica buscarPorId(long id) {
		return manager.find(FichaMedica.class, id);
	}

	public void excluir(FichaMedica FichaMedica) {
		FichaMedica fichaMedicaARemover = buscarPorId(FichaMedica.getId());
	      manager.remove(fichaMedicaARemover);
	}


}
