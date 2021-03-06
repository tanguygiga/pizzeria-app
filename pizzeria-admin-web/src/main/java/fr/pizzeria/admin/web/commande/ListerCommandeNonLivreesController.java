package fr.pizzeria.admin.web.commande;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.pizzeria.admin.metier.CommandeService;

@WebServlet("/commandesNonLivrees/liste")
public class ListerCommandeNonLivreesController extends HttpServlet {

	private static final String VUE_LISTER_COMMANDES = "/WEB-INF/views/commandes/listerCommandesNonLivrees.jsp";

	@Inject
	private CommandeService commandeService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setAttribute("listeCommandes", this.commandeService.findAllNonLivrees());
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher(VUE_LISTER_COMMANDES);
		dispatcher.forward(req, resp);

	}

}
