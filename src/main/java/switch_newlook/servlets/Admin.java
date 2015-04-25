package switch_newlook.servlets;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Admin extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		Object sessionAttr = req.getSession().getAttribute("error");
		if(sessionAttr != null){
			req.setAttribute("error", sessionAttr);
			req.getSession().removeAttribute("error");
		}
		
		RequestDispatcher view = req.getRequestDispatcher("/WEB-INF/adminCo.jsp");
		view.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String pseudo = req.getParameter("admin-co-pseudo").toString();
		String pwd = req.getParameter("admin-co-pwd").toString();
		
		//System.out.println("pseudo: "+pseudo+" - mpd : "+pwd);
		
		if("Pierre".equals(pseudo) && "Eric".equals(pwd)){	
			RequestDispatcher view = req.getRequestDispatcher("/WEB-INF/admin.jsp");
			view.forward(req, resp);
		}else{
			req.getSession().setAttribute("error", true);
			resp.sendRedirect("/switch/admin");
		}
	}
	
	

	

}
