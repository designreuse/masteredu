package br.com.masteredu.controller;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.masteredu.dao.interfaces.IUnidadeDAO;
import br.com.masteredu.dao.interfaces.IUsuarioDAO;
import br.com.masteredu.exceptions.UsuarioInexistenteException;
import br.com.masteredu.exceptions.UsuarioInvalidoException;
import br.com.masteredu.model.Aluno;
import br.com.masteredu.model.Funcionario;
import br.com.masteredu.model.Professor;
import br.com.masteredu.model.Responsavel;
import br.com.masteredu.model.Unidade;
import br.com.masteredu.model.Usuario;
import br.com.masteredu.model.enums.Situacao;

@Controller
@Transactional
public class LoginController {
	
	@Autowired
	private IUsuarioDAO dao;	
	
	@Autowired
	private IUnidadeDAO unidadeDao;	
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/login";
	}

	@RequestMapping("login")
	public ModelAndView login() {
		List<Unidade> unidades = unidadeDao.listar();

		ModelAndView mva = new ModelAndView("/usuario/login");
		mva.getModel().put("unidades", unidades);

		return mva;
	}

	@RequestMapping(value = "/logar", method = RequestMethod.POST)
	public String logar(@RequestParam("login") String login, @RequestParam("senha") String senha, 
			HttpSession session) throws UsuarioInvalidoException {
		String retorno = null;

		try {
			Usuario usuario = verificarSeExiste(login, senha);
			verificaSeEstaAtivado(usuario);

			if (usuario.isAluno()) {
				retorno = logarComoAluno(usuario, session);
			} else if (usuario.isProfessor()) {
				retorno = logarComoProfessor(usuario, session);
			} else if (usuario.isResponsavel()) {
				retorno = logarComoResponsavel(usuario, session);
			} else if (usuario.isAdmin()) {
				retorno = logarComoAdmin(usuario, session);
			}
		} catch (UsuarioInvalidoException e) {
			e.printStackTrace();
		} catch (UsuarioInexistenteException e) {
			e.printStackTrace();
		}
		
		return retorno;
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/login";
	}
	
	private Usuario verificarSeExiste(String login, String senha) throws UsuarioInexistenteException {
		Usuario usuario = dao.verificaSeExiste(login, senha);
		if (usuario == null) {
			throw new UsuarioInexistenteException();
		}
		usuario.setUltimoLogin(Calendar.getInstance());
		dao.editar(usuario);
		return usuario;
	}
	
	private void verificaSeEstaAtivado(Usuario usuario) throws UsuarioInvalidoException {
		if (usuario.getSituacao() == Situacao.DESATIVADO) {
			throw new UsuarioInvalidoException("O usuário está desativado");
		}
		
	}

	private String logarComoAluno(Usuario usuario, HttpSession session) throws UsuarioInvalidoException {
		Aluno alunoLogado = usuario.getAluno();
		if (alunoLogado != null) {
			session.setAttribute("alunoLogado", alunoLogado);
			return "redirect:/aluno/inicio";
		}
		else {
			throw new UsuarioInvalidoException("Usuário não possui aluno relacionado");
		}
	}

	private String logarComoProfessor(Usuario usuario, HttpSession session) throws UsuarioInvalidoException {
		Professor professorLogado = usuario.getProfessor();
		if (professorLogado != null) {
			session.setAttribute("professorLogado", professorLogado);
			return "redirect:/professor/inicio";
		}
		else {
			throw new UsuarioInvalidoException("Usuário não possui professor relacionado");
		}
	}

	private String logarComoResponsavel(Usuario usuario, HttpSession session) throws UsuarioInvalidoException {
		Responsavel responsavelLogado = usuario.getResponsavel();
		if (responsavelLogado != null) {
			session.setAttribute("responsavelLogado", responsavelLogado);
			return "redirect:/responsavel/inicio";
		}
		else {
			throw new UsuarioInvalidoException("Usuário não possui responável relacionado");
		}
	}

	private String logarComoAdmin(Usuario usuario, HttpSession session) throws UsuarioInvalidoException {
		Funcionario funcionarioLogado = usuario.getFuncionario();
		if (funcionarioLogado != null) {
			session.setAttribute("adminLogado", funcionarioLogado);
			return "redirect:/admin/inicio";
		}
		else {
			throw new UsuarioInvalidoException("Usuário não possui administrador relacionado");
		}
	}

}
