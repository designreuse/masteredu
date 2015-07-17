package br.com.masteredu.persistence;

import java.util.List;

public interface IDAO<T> {

	void adicionar(T t);
	void editar(T t);
	List<T> listar();
	T buscarPorId(long id);
	void excluir(T t);
		
}
