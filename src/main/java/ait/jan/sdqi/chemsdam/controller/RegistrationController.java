package ait.jan.sdqi.chemsdam.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ait.jan.sdqi.chemsdam.model.Resident;
import ait.jan.sdqi.chemsdam.service.ResidentService;

@Controller
public class RegistrationController
{
	@Autowired public ResidentService service;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView model = new ModelAndView("register");
		model.addObject("resident", new Resident());
		return model;
	}
	
	@RequestMapping(value = "register_resident", method = RequestMethod.POST)
	public ModelAndView addRegister(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("register") Resident resident)
	{
		service.register(resident);
		return new ModelAndView("login");
	}
}
 
