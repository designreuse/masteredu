package br.com.masteredu.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.sun.org.apache.bcel.internal.generic.GETSTATIC;

public class AutorizadorUsuarioInterceptor extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request,
							HttpServletResponse response,
							Object controller) throws Exception {
		String uri = request.getRequestURI();
		if(uri.endsWith("login") || uri.endsWith("logar") || uri.contains("resources") || uri.endsWith("/")) {
			return true;
		}
		
		if(request.getSession().getAttribute("professorLogado") != null
				|| request.getSession().getAttribute("alunoLogado") != null
				|| request.getSession().getAttribute("responsavelLogado") != null
				|| request.getSession().getAttribute("adminLogado") != null) {
			return true;
		} else {
			String contexto = request.getContextPath();
			response.sendRedirect(contexto + "/login");
			return false;
		}
	}
	
}