package br.com.masteredu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.masteredu.model.Aluno;

@Controller
@Transactional
public class AdminController {
	
	@RequestMapping("admin/inicio")
	public String alunoHome () {
		
		
		return "admin/home_admin";
	}
	
	@RequestMapping("admin/alunos")
	public String administrarAlunos () {
		
		
		return "admin/alunos/lista";
	}

	@RequestMapping("admin/professores")
	public String administrarProfessores () {
		
		
		return "admin/professores";
	}
	
	@RequestMapping("admin/turmas")
	public String administrarTurmas () {
		
		
		return "admin/turmas";
	}
	
	@RequestMapping("admin/escola")
	public String administrarEscola () {
		
		
		return "admin/escola";
	}
	
	@RequestMapping("admin/disciplinas")
	public String administrarDisciplinas () {
		
		
		return "admin/disciplinas";
	}
	
	@RequestMapping("admin/usuario")
	public String administrarUsuarios () {
		
		
		return "admin/usuarios";
	}
	
	
	@RequestMapping("admin/alunos/novo-aluno")
	public String novoAluno () {
		
		
		return "admin/alunos/form-aluno";
	}
	
	@RequestMapping("admin/alunos/editar-aluno")
	public ModelAndView editarAluno (Aluno aluno) {
		ModelAndView mav = new ModelAndView("admin/alunos/form-aluno");
		mav.getModel().put("aluno", aluno);
		
		return mav;
	}

	@RequestMapping("admin/alunos/salvar-aluno")
	public String salvarAluno (Aluno aluno) {
		
		
		return "admin/alunos/lista";
	}
}
