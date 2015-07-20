package br.com.masteredu.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.masteredu.dao.interfaces.IAlunoDAO;
import br.com.masteredu.model.Aluno;

@Controller
@Transactional
public class AlunoController {
	
	@Autowired
	private IAlunoDAO dao;
	
	@RequestMapping("/testeSpring")
	public String teste() {
		System.out.println("Testando aplicação");
		
		return "teste";
	}
	
	@RequestMapping("aluno/inicio")
	public String alunoHome () {
		
		
		return "aluno/home";
	}
	
	@RequestMapping("adicionaAluno")
	public String adicionaAluno(){
		try {
			Aluno aluno = new Aluno();
			aluno.setNome("Luciana Feitoza");
	
			dao.adicionar(aluno);
			System.out.println("Aluno " + aluno.getNome() + " adicionado com sucesso.");
				
			 return "aluno/adicionado";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}		
	}

}
