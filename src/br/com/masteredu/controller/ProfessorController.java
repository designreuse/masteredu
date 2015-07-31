package br.com.masteredu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.masteredu.dao.interfaces.IProfessorDAO;
import br.com.masteredu.exceptions.ProfessorInvalidoException;
import br.com.masteredu.model.Professor;

@Controller
@Transactional
public class ProfessorController {
	
	@Autowired
	private IProfessorDAO dao;
	
	
	@RequestMapping("professor/inicio")
	public String alunoHome () {
		
		return "professor/home_professor";
	}
	
	public String adicionaProfessor( Professor professor) {
		try {
			validaProfessor(professor);
			dao.adicionar(professor);
			return "professor/adicionado";
		} catch (ProfessorInvalidoException e) {
			e.printStackTrace();
			return null;
		}
	}

	
	@RequestMapping("professor/lancar-notas")
	public String lancarNotas() {
		
		return "professor/form_lancar_notas";
	}
	
	private void validaProfessor(Professor professor) throws ProfessorInvalidoException {
	
		
	}

}
