package br.com.masteredu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import br.com.masteredu.dao.interfaces.IEnderecoDAO;

@Controller
@Transactional
public class EnderecoController {
	
	@Autowired
	private IEnderecoDAO dao;

}
