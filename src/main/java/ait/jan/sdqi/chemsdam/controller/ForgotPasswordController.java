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
public class ForgotPasswordController 
{
	@Autowired public ResidentService service;
	
	@RequestMapping(value="/forgotpassword", method=RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView model = new ModelAndView("forgotpassword");
		model.addObject("resident", new Resident());
		return model;
	}
	
	@RequestMapping(value = "update_password", method = RequestMethod.POST)
	public String updatePassword(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("forgot") Resident resident)
	{
		service.update_password(resident);
		return "redirect:/";
	}
}
 
