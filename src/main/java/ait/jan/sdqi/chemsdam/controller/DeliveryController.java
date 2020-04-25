package ait.jan.sdqi.chemsdam.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ait.jan.sdqi.chemsdam.model.Delivery;
import ait.jan.sdqi.chemsdam.service.DeliveryService;
import ait.jan.sdqi.chemsdam.service.DeliveryServiceImpl;

@Controller
public class DeliveryController 
{
	@Autowired public DeliveryService service;
	@Autowired public DeliveryServiceImpl serv_impl;
	
	@RequestMapping(value = "/dms_home", method = RequestMethod.GET)
	public ModelAndView showDeliveryHome(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView model = new ModelAndView("dms_home");
		model.addObject("delivery", new Delivery());
		return model;
	}
	
	@RequestMapping(value = "register_delivery", method = RequestMethod.POST)
	public String addDelivery(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("registerDelivery") Delivery delivery)
	{
		service.register(delivery);
		return "redirect:/future_delivery.jsp";
	}
}
