package br.com.masteredu.controller;

import java.util.Calendar;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.masteredu.dao.interfaces.IUsuarioDAO;
import br.com.masteredu.exceptions.UsuarioInvalidoException;
import br.com.masteredu.model.Aluno;
import br.com.masteredu.model.Professor;
import br.com.masteredu.model.Responsavel;
import br.com.masteredu.model.Usuario;

@Controller
@Transactional
public class LoginController {
	
	@Autowired
	private IUsuarioDAO dao;	
	
	@RequestMapping("/")
	public String index() {
		return "/usuario/login";
	}

	@RequestMapping("usuario/login")
	public String login() {
		return "/usuario/login";
	}

	@RequestMapping(value = "/logar", method = RequestMethod.POST)
	public String logar(@RequestParam("login") String login, @RequestParam("senha") String senha, 
			@RequestParam("") String tipoUsuario, HttpSession sessao) throws UsuarioInvalidoException {
		
		if (tipoUsuario != null) {
			if (tipoUsuario.equals("aluno")) {
				Aluno alunoLogado = validarUsuario(login, senha).getAluno();
				if (alunoLogado != null) {
					sessao.setAttribute("alunoLogado", alunoLogado);
					return "redirect:/aluno/inicio";
				}
				else {
					throw new UsuarioInvalidoException();
				}
			} else if (tipoUsuario.equals("professor")) {
				Professor professorLogado = validarUsuario(login, senha).getProfessor();
				if (professorLogado != null) {
					sessao.setAttribute("professorLogado", professorLogado);
					return "redirect:/professor/inicio";
				}
				else {
					throw new UsuarioInvalidoException();
				}
			} else if (tipoUsuario.equals("responsavel")) {
				Responsavel responsavelLogado = validarUsuario(login, senha).getResponsavel();
				if (responsavelLogado != null) {
					sessao.setAttribute("responsavelLogado", responsavelLogado);
					return "redirect:/responsavel/inicio";
				}
				else {
					throw new UsuarioInvalidoException();
				}
			}
		} else {
			System.out.println("Tipo de usu�rio nulo");
		}
		return "index";   
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
	private Usuario validarUsuario(String login, String senha) {
		Usuario usuario = dao.getUsuario(login, senha);
		usuario.setUltimoLogin(Calendar.getInstance());
		dao.editar(usuario);
		return usuario;
	}
	
}
