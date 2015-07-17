package br.com.masteredu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import br.com.masteredu.dao.interfaces.IUnidadeDAO;

@Controller
@Transactional
public class UnidadeController {
	
	@Autowired
	private IUnidadeDAO dao;

}
