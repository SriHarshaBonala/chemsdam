package ait.jan.sdqi.chemsdam.dao;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import ait.jan.sdqi.chemsdam.model.Visitor;

@Service
public class VisitorDaoImpl implements VisitorDao
{
	@Autowired JdbcTemplate template;
	
	@Override
	public void register(Visitor visitor) 
	{
		String sql = "insert into dam_visitor_details values (?,?,?,?,?,?,?,?,?)";
		template.update(sql, new Object[] {visitor.getResident_flat_number(), visitor.getVisitor_name(), visitor.getVisitor_expected_date(), 
										   visitor.getVisitor_mobile_number(), null, null, visitor.getVisitor_identification_number(), 
										   visitor.getResident_mobile_number(), "Not yet arrived"});
	}

	@Override
	public Visitor validate(HttpServletRequest req, Visitor visitor) 
	{
		return null;
	}

	@Override
	public void update(Visitor visitor) 
	{
		String sql = "update dam_visitor_details set resident_flat_number=?, visitor_name=?, visitor_mobile_number=?"
				+ ", visitor_expected_date=?, resident_mobile_number=? where visitor_identification_number = ?";
		template.update(sql, visitor.getResident_flat_number(), visitor.getVisitor_name(), visitor.getVisitor_mobile_number(), 
				visitor.getVisitor_expected_date(), visitor.getResident_mobile_number(), visitor.getVisitor_identification_number());
	}

	@Override
	public void delete(Visitor visitor, String visitor_identification_number) 
	{
		String sql = "delete from dam_visitor_details where visitor_identification_number = ?";
		template.update(sql, visitor.getVisitor_identification_number());
	}
}
