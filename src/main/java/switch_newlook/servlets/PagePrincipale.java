package switch_newlook.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import switch_newlook.managers.CarteManager;

public class PagePrincipale extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		List<String> listeDesItems=new ArrayList<String>();
		listeDesItems.add("Sandwiches");
		listeDesItems.add("Pizzas");
		listeDesItems.add("Paninis");
		listeDesItems.add("Salades");
		listeDesItems.add("Boissons");
		listeDesItems.add("Desserts");
		
		
		
		req.setAttribute("listeDesItems", listeDesItems);
		req.setAttribute("listeDesBoissons", CarteManager.getInstance().dispoBoissons());
		req.setAttribute("listeDesDesserts", CarteManager.getInstance().dispoDesserts());
		req.setAttribute("listeDesMenus", CarteManager.getInstance().dispoMenus());
		req.setAttribute("listeDesSandwiches", CarteManager.getInstance().dispoSandwiches());
		req.setAttribute("listeDesPaninis", CarteManager.getInstance().dispoPaninis());
		req.setAttribute("listeDesSalades", CarteManager.getInstance().dispoSalades());
		req.setAttribute("listeDesPizzas", CarteManager.getInstance().dispoPizzas());
		
		RequestDispatcher view=req.getRequestDispatcher("WEB-INF/pagePrincipale.jsp");
		view.forward(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
	

}
