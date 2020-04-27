package ait.jan.sdqi.chemsdam.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ait.jan.sdqi.chemsdam.dao.VisitorDao;
import ait.jan.sdqi.chemsdam.model.Visitor;

@Service
public class VisitorServiceImpl implements VisitorService
{
	@Autowired VisitorDao vdao;
	
	@Override
	public void register(Visitor visitor) 
	{
		vdao.register(visitor);
	}

	@Override
	public Visitor validate(HttpServletRequest req, Visitor visitor) 
	{
		return vdao.validate(req, visitor);
	}

	@Override
	public void update_details(Visitor visitor) 
	{
		vdao.update(visitor);
	}

	@Override
	public void delete_visitor(Visitor visitor, String visitor_identification_number) 
	{
		vdao.delete(visitor, visitor_identification_number);
	}

}
