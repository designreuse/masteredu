package br.com.masteredu;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import br.com.masteredu.dao.JpaProfessorDAO;
import br.com.masteredu.dao.interfaces.IProfessorDAO;
import br.com.masteredu.model.Professor;
import br.com.masteredu.model.Turma;

public class Main {
	
	public static void main(String[] args) {
		IProfessorDAO dao = new JpaProfessorDAO();
		Professor professor = dao.buscarPorId(1);
		
		List<Turma> turmas = professor.getTurmas();
		for (Turma turma : turmas) {
			System.out.println(turma.getDescricao());
		}
	}
	
	

}
