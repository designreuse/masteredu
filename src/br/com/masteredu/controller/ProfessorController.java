package br.com.masteredu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import br.com.masteredu.dao.interfaces.IProfessorDAO;

@Controller
@Transactional
public class ProfessorController {
	
	@Autowired
	private IProfessorDAO dao;

}
