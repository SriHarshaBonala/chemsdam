package ait.jan.sdqi.chemsdam.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import ait.jan.sdqi.chemsdam.model.Delivery;

@Service
public interface DeliveryService 
{
	void register(Delivery delivery);
	Delivery validate(HttpServletRequest req, Delivery delivery);
	void update_details(Delivery delivery);
	void delete_delivery(Delivery delivery, String delivery_reference_number);
}
