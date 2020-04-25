package ait.jan.sdqi.chemsdam.dao;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Repository;
import ait.jan.sdqi.chemsdam.model.Delivery;

@Repository
public interface DeliveryDao
{
	void register(Delivery delivery);
	Delivery validate(HttpServletRequest req, Delivery delivery);
	void update(Delivery delivery);
}
