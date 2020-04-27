package ait.jan.sdqi.chemsdam.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ait.jan.sdqi.chemsdam.model.Credentials;
import ait.jan.sdqi.chemsdam.model.Resident;
import ait.jan.sdqi.chemsdam.service.ResidentService;

@Controller
public class LoginController 
{
	@Autowired ResidentService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET )
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView model = new ModelAndView("login");
		model.addObject("details", new Resident());
		return model;
	}
	
	@RequestMapping(value = "login_details", method = RequestMethod.POST)
	public void login(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("login") Credentials details) throws IOException, ServletException
	{
		Resident resident = service.validate(request, details);
		String direct = "login.jsp";
		if(null != resident)
		{
			HttpSession session = request.getSession();
			session.setAttribute("resident", resident);
			direct = "welcome.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(direct);
			dispatcher.forward(request, response);
			
		}
		else
		{
			String message = "Invalid Credentials";
			request.setAttribute("message", message);
			RequestDispatcher dispatcher = request.getRequestDispatcher(direct);
			dispatcher.forward(request, response);
			
		}
	}
}
