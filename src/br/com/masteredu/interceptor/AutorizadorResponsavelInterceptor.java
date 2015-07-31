package br.com.masteredu.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AutorizadorResponsavelInterceptor {

	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object controller) throws Exception {
		String uri = request.getRequestURI();
		if (uri.endsWith("/") || uri.endsWith("logar")
				|| uri.contains("resources")) {
			return true;
		}

		if (request.getSession().getAttribute("responsavelLogado") != null) {
			return true;
		} else {
			response.sendRedirect("/");
			return false;
		}
	}

}
