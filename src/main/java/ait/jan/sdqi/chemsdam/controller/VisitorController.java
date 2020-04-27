package ait.jan.sdqi.chemsdam.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ait.jan.sdqi.chemsdam.model.Visitor;
import ait.jan.sdqi.chemsdam.service.VisitorService;

@Controller
public class VisitorController 
{
	@Autowired public VisitorService service;
	
	@RequestMapping(value = "/vam_home", method = RequestMethod.GET)
	public ModelAndView showVisitorHome(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView model = new ModelAndView("vam_home");
		model.addObject("visitor", new Visitor());
		return model;
	}
	
	@RequestMapping(value = "/future_visitor")
	public ModelAndView showFutureVisitors(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView model = new ModelAndView("future_visitor");
		model.addObject("future_visitors", new Visitor());
		return model;
	}
	
	@RequestMapping(value = "register_visitor", method = RequestMethod.POST)
	public String addVisitor(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("registerVisitor") Visitor visitor)
	{
		service.register(visitor);
		return "redirect:/vam_home.jsp";
	}
	
	@RequestMapping(value = "edit_visitor")
	public ModelAndView editVisitor(@RequestParam String visitor_identification_number)
	{
		ModelAndView model = new ModelAndView("edit_visitor");
		model.addObject("visitor_identification_number", visitor_identification_number);
		return model;
	}
	
	@RequestMapping(value = "update_visitor", method = RequestMethod.POST)
	public String updateVisitor(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("editVisitor") Visitor visitor)
	{
		service.update_details(visitor);
		return "redirect:/future_visitor.jsp";
	}
	
	@RequestMapping(value = "delete_visitor")
	public String deleteVisitor(Visitor visitor, @RequestParam String visitor_identification_number)
	{
		service.delete_visitor(visitor, visitor_identification_number);
		return "redirect:/future_visitor.jsp";
	}
}
