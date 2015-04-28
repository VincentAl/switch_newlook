package switch_newlook.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import switch_newlook.entities.ItemCarte;
import switch_newlook.managers.CarteManager;

public class PagePrincipale extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setAttribute("fullCarte", CarteManager.getInstance().listFullCarte(ItemCarte.DISPO));
		
		RequestDispatcher view=req.getRequestDispatcher("WEB-INF/pagePrincipale.jsp");
		view.forward(req, resp);
		
	}	

}
