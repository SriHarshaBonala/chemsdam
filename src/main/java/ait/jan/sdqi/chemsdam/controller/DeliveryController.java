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

import ait.jan.sdqi.chemsdam.model.Delivery;
import ait.jan.sdqi.chemsdam.service.DeliveryService;
import ait.jan.sdqi.chemsdam.service.DeliveryServiceImpl;

@Controller
public class DeliveryController 
{
	//@Autowired Delivery delivery;
	@Autowired public DeliveryService service;
	@Autowired public DeliveryServiceImpl serv_impl;
	
	@RequestMapping(value = "/dms_home", method = RequestMethod.GET)
	public ModelAndView showDeliveryHome(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView model = new ModelAndView("dms_home");
		model.addObject("delivery", new Delivery());
		return model;
	}
	
	@RequestMapping(value = "/future_delivery")
	public ModelAndView showFutureDeliveries(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView model = new ModelAndView("future_delivery");
		model.addObject("future_deliveries", new Delivery());
		return model;
	}
	
	@RequestMapping(value = "register_delivery", method = RequestMethod.POST)
	public String addDelivery(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("registerDelivery") Delivery delivery)
	{
		service.register(delivery);
		return "redirect:/dms_home.jsp";
	}
	
	@RequestMapping(value = "edit_delivery")
	public ModelAndView editDelivery(@RequestParam String delivery_reference_number)
	{
		ModelAndView model = new ModelAndView("edit_delivery");
		model.addObject("delivery_reference_number", delivery_reference_number);
		return model;
	}
	
	@RequestMapping(value = "update_delivery", method = RequestMethod.POST)
	public String updateDelivery(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("editDelivery") Delivery delivery)
	{
		service.update_details(delivery);
		return "redirect:/future_delivery.jsp";
	}
	
	@RequestMapping(value = "delete_delivery")
	public String deleteDelivery(Delivery delivery, @RequestParam String delivery_reference_number)
	{
		service.delete_delivery(delivery, delivery_reference_number);
		return "redirect:/future_delivery.jsp";
	}
}
