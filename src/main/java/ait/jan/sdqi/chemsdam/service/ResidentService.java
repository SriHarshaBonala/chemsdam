package ait.jan.sdqi.chemsdam.service;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import ait.jan.sdqi.chemsdam.model.Credentials;
import ait.jan.sdqi.chemsdam.model.Resident;

@Service
public interface ResidentService 
{
	void register(Resident resident);
	Resident validate(HttpServletRequest req, Credentials details);
	void update_password(Resident resident);
}
