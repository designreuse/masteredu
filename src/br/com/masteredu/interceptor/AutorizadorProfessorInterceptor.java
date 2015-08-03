package br.com.masteredu.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorProfessorInterceptor extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request,
							HttpServletResponse response,
							Object controller) throws Exception {
		String uri = request.getRequestURI();
		if(uri.endsWith("login") || uri.endsWith("logar") || uri.contains("resources") || uri.endsWith("/")) {
			return true;
		}
		
		if(request.getSession().getAttribute("professorLogado") != null
				|| request.getSession().getAttribute("alunoLogado") != null
				|| request.getSession().getAttribute("responsavelLogado") != null) {
			return true;
		} else {
			response.sendRedirect("../usuario/login");
			return false;
		}
	}
	
}