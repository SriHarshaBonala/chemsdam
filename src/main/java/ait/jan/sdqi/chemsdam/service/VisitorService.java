package ait.jan.sdqi.chemsdam.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import ait.jan.sdqi.chemsdam.model.Visitor;

@Service
public interface VisitorService 
{
	void register(Visitor visitor);
	Visitor validate(HttpServletRequest req, Visitor visitor);
	void update_details(Visitor visitor);
	void delete_visitor(Visitor visitor, String visitor_identification_number);
}
