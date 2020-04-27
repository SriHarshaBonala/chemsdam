package ait.jan.sdqi.chemsdam.dao;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Repository;

import ait.jan.sdqi.chemsdam.model.Visitor;

@Repository
public interface VisitorDao 
{
	void register(Visitor visitor);
	Visitor validate(HttpServletRequest req, Visitor visitor);
	void update(Visitor visitor);
	void delete(Visitor visitor, String visitor_identification_number);
}
