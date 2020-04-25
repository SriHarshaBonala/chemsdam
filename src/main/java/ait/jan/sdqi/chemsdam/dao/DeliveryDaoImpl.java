package ait.jan.sdqi.chemsdam.dao;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import ait.jan.sdqi.chemsdam.model.Delivery;

@Service
public class DeliveryDaoImpl implements DeliveryDao
{
	@Autowired JdbcTemplate template;
	
	@Override
	public void register(Delivery delivery) 
	{
		String sql = "insert into dam_delivery_details values (?,?,?,?,?,?,?,?,?)";
		template.update(sql, new Object[] {delivery.getResident_flat_number(), delivery.getDelivery_reference_number(), delivery.getDelivery_name(),
											delivery.getDelivery_type(), delivery.getDelivery_company(), delivery.getDelivery_expected_date() , null,
											delivery.getResident_mobile_number(), "Not yet delivered"});
	}

	@Override
	public Delivery validate(HttpServletRequest req, Delivery delivery) 
	{
		return null;
	}

	@Override
	public void update(Delivery delivery) 
	{
		
	}

}
