package br.com.masteredu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.masteredu.dao.interfaces.IResponsavelDAO;

@Controller
@Transactional
public class ResponsavelController {
	
	@Autowired
	private IResponsavelDAO dao;
	
	@RequestMapping("responsavel/inicio")
	public String alunoHome () {
		
		return "responsavel/home";
	}

}
