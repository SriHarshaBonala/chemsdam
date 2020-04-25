package ait.jan.sdqi.chemsdam.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ait.jan.sdqi.chemsdam.dao.DeliveryDao;
import ait.jan.sdqi.chemsdam.model.Delivery;

@Service
public class DeliveryServiceImpl implements DeliveryService
{
	@Autowired DeliveryDao ddao;
	
	@Override
	public void register(Delivery delivery) 
	{
		ddao.register(delivery);
	}

	@Override
	public Delivery validate(HttpServletRequest req, Delivery delivery) 
	{
		return ddao.validate(req, delivery);
	}

	@Override
	public void update_details(Delivery delivery) 
	{
		ddao.update(delivery);
	}
}
