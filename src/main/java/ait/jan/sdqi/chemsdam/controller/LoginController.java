package ait.jan.sdqi.chemsdam.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("login") Credentials details)
	{
		ModelAndView model = null;
		Resident resident = service.validate(request, details);
		if(null != resident)
		{
			model = new ModelAndView("welcome");
			model.addObject("firstname", resident.getResident_name());
		}
		else
		{
			model = new ModelAndView("login");
			model.addObject("message","Username or password is incorrect");
		}
		return model;
	}
}
