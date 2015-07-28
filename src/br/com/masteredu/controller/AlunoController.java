package br.com.masteredu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.masteredu.dao.interfaces.IAlunoDAO;
import br.com.masteredu.exceptions.AlunoInvalidoException;
import br.com.masteredu.model.Aluno;

@Controller
@Transactional
public class AlunoController {
	
	@Autowired
	private IAlunoDAO dao;
	
	@RequestMapping("aluno/inicio")
	public String alunoHome () {
		
		
		return "aluno/home";
	}
	
	@RequestMapping("adicionaAluno")
	public String adicionaAluno(Aluno aluno){
		try {
			validaAluno(aluno);
			dao.adicionar(aluno);
			return "aluno/adicionado";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}		
	}

	private void validaAluno(Aluno aluno) throws AlunoInvalidoException {
		
		
	}

}
