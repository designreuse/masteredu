package br.com.masteredu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import br.com.masteredu.dao.interfaces.IFichaMedicaDAO;

@Controller
@Transactional
public class FichaMedicaController {

	@Autowired
	private IFichaMedicaDAO dao;
	
}
