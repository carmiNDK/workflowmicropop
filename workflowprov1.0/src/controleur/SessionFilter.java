package controleur;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

public class SessionFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;

		HttpSession session = req.getSession(false);

		String chemin = req.getRequestURI();

		// Laisser passer login + ressources statiques
		if (chemin.endsWith("login.php") || chemin.contains("/css/")
				|| chemin.contains("/js/")
				|| chemin.contains("/images/")
				|| chemin.contains("/fonts/")
				|| chemin.contains("/assets/")
				|| // AJOUT IMPORTANT
				chemin.endsWith(".css") || chemin.endsWith(".js")
				|| chemin.endsWith(".png") || chemin.endsWith(".jpg")
				|| chemin.endsWith(".jpeg") || chemin.endsWith(".gif")
				|| chemin.endsWith(".woff") || chemin.endsWith(".ttf")) {

			chain.doFilter(request, response);
			return;
		}

		// Vérifier session
		if (session == null) {
			resp.sendRedirect(req.getContextPath() + "/login.php");
			return;
		}

		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
	}
}