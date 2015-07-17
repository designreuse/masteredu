package br.com.masteredu.controller;

import java.sql.Date;
import java.util.Calendar;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;



import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;

import br.com.masteredu.dao.interfaces.IUsuarioDAO;
import br.com.masteredu.model.Usuario;

@Controller
@Transactional
public class UsuarioController {
	
	@Autowired
	private IUsuarioDAO dao;
	
	@RequestMapping("/")
	public String loginForm() {
		return "/usuario/login";
	}

	@RequestMapping(value = "/logar", method = RequestMethod.POST)
	public String logar(@RequestParam("login") String login, @RequestParam("senha") String senha, @RequestParam("") String tipoUsuario, HttpSession sessao) {
		
		if (tipoUsuario != null) {
			System.out.println(login);
			System.out.println(senha);
			System.out.println(tipoUsuario);
			return "index";
		} else {
			System.out.println("Tipo de usuário nulo");
		}
		return "index";
		/*
		Usuario usuario = dao.getUsuario(login, senha);
		if (usuario == null) {
			return "loginFalho";
		} else {
			usuario.setUltimoLogin(Calendar.getInstance());
			dao.editar(usuario);
			sessao.setAttribute("usuario", usuario);
			return "redirect:/usuario/autenticado";
		}*/
	}

	@RequestMapping("/usuario/autenticado")
	public ModelAndView usuarioAutenticado(
	@ModelAttribute("usuario") Usuario usuario){

		
		ModelAndView mav = new ModelAndView("usuario/index");
		mav.getModel().put("usuario", usuario);
		return mav;
		}
	
	@RequestMapping("/resetarSenha")
	public String resetarSenha(){
		return "/usuario/forgot_password";
	}

}
