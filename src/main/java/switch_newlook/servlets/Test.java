package switch_newlook.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import swith_newlook.managers.CarteManager;

public class Test extends HttpServlet{

	public Test() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println(CarteManager.getInstance().dispoBoissons().get(0).getNom());
		
		req.setAttribute("boissons", CarteManager.getInstance().dispoBoissons());
		
		RequestDispatcher view = req.getRequestDispatcher("/WEB-INF/test.jsp");
		view.forward(req, resp);
	}

}
