package br.com.masteredu.controller;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.masteredu.dao.interfaces.IDisciplinaDAO;
import br.com.masteredu.dao.interfaces.IProfessorDAO;
import br.com.masteredu.exceptions.ProfessorInvalidoException;
import br.com.masteredu.model.Aluno;
import br.com.masteredu.model.Disciplina;
import br.com.masteredu.model.Matricula;
import br.com.masteredu.model.Professor;
import br.com.masteredu.model.Turma;

@Controller
@Transactional
public class ProfessorController {
	
	private static Professor professorLogado;
	
	@Autowired
	private IProfessorDAO dao;
	
	
	@RequestMapping("/professor/inicio")
	public ModelAndView alunoHome (HttpSession session) {
		ModelAndView mav = new ModelAndView("professor/home_professor");
		Professor professor = (Professor) session.getAttribute("professorLogado");
		professorLogado = dao.buscarPorId(professor.getId());
		
		mav.getModel().put("professorLogado", professorLogado);
		
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
	public ModelAndView lancarNotas() {		
		List<Turma> turmas = professorLogado.getTurmas();		
		Set<Disciplina> disciplinas = professorLogado.getDisciplinas();
		
		ModelAndView mav = new ModelAndView("professor/form_lancar_notas");
		mav.getModel().put("turmas", turmas);
		mav.getModel().put("disciplinas", disciplinas);
		
		return mav;
	}
	
	@RequestMapping("professor/realizar-chamada")
	public ModelAndView realizarChamada() {
		ModelAndView mav = new ModelAndView("professor/form_realizar_chamada");
		
		return mav;		
	}
	
	@RequestMapping("professor/agendar-prova")
	public ModelAndView agendarProva() {
		ModelAndView mav = new ModelAndView("professor/form_agendar_prova");
		
		return mav;		
	}
	
	@RequestMapping("professor/abrirTurmaParaLancarNota")
	public ModelAndView abrirTurmaParaLancarNota(Turma turma) {
		List<Matricula> matriculas = turma.getMatriculas();		
		
		
		ModelAndView mav = new ModelAndView("professor/form_lancar_notas");
		mav.getModel().put("matriculas", matriculas);
		
		
		return mav;	
	}
	
	private void validaProfessor(Professor professor) throws ProfessorInvalidoException {
	
		
	}

}
