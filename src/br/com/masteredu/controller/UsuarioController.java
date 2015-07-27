package br.com.masteredu.controller;

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

import br.com.masteredu.dao.interfaces.IUsuarioDAO;
import br.com.masteredu.model.Aluno;
import br.com.masteredu.model.Professor;
import br.com.masteredu.model.Responsavel;
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
	public String logar(@RequestParam("login") String login, @RequestParam("senha") String senha, 
			@RequestParam("") String tipoUsuario, HttpSession sessao) {
		
		if (tipoUsuario != null) {
			if (tipoUsuario.equals("aluno")) {
				Aluno usuarioLogado = validarUsuario(login, senha).getAluno();
				sessao.setAttribute("usuarioLogado", usuarioLogado);
				return "redirect:/aluno/inicio";
			} else if (tipoUsuario.equals("professor")) {
				Professor usuarioLogado = validarUsuario(login, senha).getProfessor();
				sessao.setAttribute("usuarioLogado", usuarioLogado);
				return "redirect:/professor/inicio";
			} else if (tipoUsuario.equals("responsavel")) {
				Responsavel usuarioLogado = validarUsuario(login, senha).getResponsavel();
				sessao.setAttribute("usuarioLogado", usuarioLogado);
				return "redirect:/responsavel/inicio";
			}
		} else {
			System.out.println("Tipo de usuário nulo");
		}
		return "index";   
	}

	@RequestMapping("/logout")
	public String logout() {
		
		return "redirect:/";
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

	private Usuario validarUsuario(String login, String senha) {
		Usuario usuario = dao.getUsuario(login, senha);
		usuario.setUltimoLogin(Calendar.getInstance());
		dao.editar(usuario);
		return usuario;
	}
}
