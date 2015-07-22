package br.com.masteredu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.masteredu.dao.interfaces.IResponsavelDAO;
import br.com.masteredu.exceptions.ResponsavelInvalidoException;
import br.com.masteredu.model.Responsavel;

@Controller
@Transactional
public class ResponsavelController {
	
	@Autowired
	private IResponsavelDAO dao;
	
	@RequestMapping("responsavel/inicio")
	public String alunoHome () {
		
		return "responsavel/home";
	}
	
	@RequestMapping("adicionaResponsavel")
	public String adicionaResponsavel(Responsavel responsavel) {
		try {
			validaResponsavel(responsavel);
			dao.adicionar(responsavel);
			return "responsavel/adicionado";
		} catch (ResponsavelInvalidoException e) {
			e.printStackTrace();
			return null;
		}
	}

	private void validaResponsavel(Responsavel responsavel) throws ResponsavelInvalidoException {
		
		
	}

}
