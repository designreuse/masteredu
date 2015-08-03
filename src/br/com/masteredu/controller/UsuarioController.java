package br.com.masteredu.controller;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.masteredu.dao.interfaces.IUsuarioDAO;
import br.com.masteredu.exceptions.UsuarioInvalidoException;
import br.com.masteredu.model.Aluno;
import br.com.masteredu.model.Professor;
import br.com.masteredu.model.Responsavel;
import br.com.masteredu.model.Usuario;
import br.com.masteredu.model.enums.Situacao;

@Controller
@Transactional
public class UsuarioController {
	
	@Autowired
	private IUsuarioDAO dao;	
	
	@RequestMapping("/usuario/resetar-senha")
	public String resetarSenha(){
		return "/usuario/forgot_password";
	}
	
	@RequestMapping("/usuario/desativar")
	public String desativarUsuario(Usuario usuario) {
		usuario.setSituacao(Situacao.DESATIVADO);
		dao.editar(usuario);
		
		return "";
	}
	
	@RequestMapping("/usuario/acesso-nao-autorizado")
	public String acessoNaoAutorizado() {
		
		return "pages/401";
	}
	
	@RequestMapping("/usuario/ativar")
	public String ativarUsuario(Usuario usuario) {
		usuario.setSituacao(Situacao.ATIVADO);
		dao.editar(usuario);
		return "";
	}
	
	@RequestMapping("/usuario/adicionar")
	public String adicionarUsuario (Usuario usuario) {
		dao.adicionar(usuario);
		
		return "";
	}
	
	@RequestMapping("/usuario/excluir")
	public String excluirUsuario(Usuario usuario) {
		dao.editar(usuario);
		
		return "";
	}
	
	@RequestMapping("/usuario/listar")
	public ModelAndView listarUsuarios() {
		List<Usuario> usuarios = dao.listar();
		
		ModelAndView mav = new ModelAndView("usuario/listaUsuarios");
		mav.getModel().put("usuarios", usuarios);
		
		return mav;
	}	
	
}
