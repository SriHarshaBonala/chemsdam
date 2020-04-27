package ait.jan.sdqi.chemsdam.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	@RequestMapping(value = "logout_resident")
	protected void logout_resident(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session = req.getSession(false);
		if(session != null)
		{
			session.removeAttribute("resident");
			String message = "Session expired! Please Login Again";
			req.setAttribute("message", message);
			RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
			dispatcher.forward(req, res);
		}
	}
}
