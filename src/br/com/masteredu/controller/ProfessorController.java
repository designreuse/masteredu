package br.com.masteredu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.masteredu.dao.interfaces.IProfessorDAO;
import br.com.masteredu.exceptions.ProfessorInvalidoException;
import br.com.masteredu.model.Professor;

@Controller
@Transactional
public class ProfessorController {
	
	@Autowired
	private IProfessorDAO dao;
	
	
	@RequestMapping("professor/inicio")
	public ModelAndView alunoHome (HttpSession session) {
		ModelAndView mav = new ModelAndView("professor/home_professor");
		Professor professor = (Professor) session.getAttribute("professorLogado");
		
		mav.getModel().put("professorLogado", professor);
		
		return mav;
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
