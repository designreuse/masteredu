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
	
	@RequestMapping("/")
	public String loginForm() {
		return "/usuario/login";
	}

	@RequestMapping(value = "/logar", method = RequestMethod.POST)
	public String logar(@RequestParam("login") String login, @RequestParam("senha") String senha, 
			@RequestParam("") String tipoUsuario, HttpSession sessao) throws UsuarioInvalidoException {
		
		if (tipoUsuario != null) {
			if (tipoUsuario.equals("aluno")) {
				Aluno usuarioLogado = validarUsuario(login, senha).getAluno();
				if (usuarioLogado != null) {
					sessao.setAttribute("usuarioLogado", usuarioLogado);
					return "redirect:/aluno/inicio";
				}
				else {
					throw new UsuarioInvalidoException();
				}
			} else if (tipoUsuario.equals("professor")) {
				Professor usuarioLogado = validarUsuario(login, senha).getProfessor();
				if (usuarioLogado != null) {
					sessao.setAttribute("usuarioLogado", usuarioLogado);
					return "redirect:/professor/inicio";
				}
				else {
					throw new UsuarioInvalidoException();
				}
			} else if (tipoUsuario.equals("responsavel")) {
				Responsavel usuarioLogado = validarUsuario(login, senha).getResponsavel();
				if (usuarioLogado != null) {
					sessao.setAttribute("usuarioLogado", usuarioLogado);
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
	
	@RequestMapping("/usuario/resetarSenha")
	public String resetarSenha(){
		return "/usuario/forgot_password";
	}
	
	@RequestMapping("/usuario/desativar")
	public String desativarUsuario(Usuario usuario) {
		usuario.setSituacao(Situacao.DESATIVADO);
		dao.editar(usuario);
		
		return "";
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
	
	

	private Usuario validarUsuario(String login, String senha) {
		Usuario usuario = dao.getUsuario(login, senha);
		usuario.setUltimoLogin(Calendar.getInstance());
		dao.editar(usuario);
		return usuario;
	}
	
	
}
