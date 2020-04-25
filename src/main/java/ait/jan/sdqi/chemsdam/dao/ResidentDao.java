package ait.jan.sdqi.chemsdam.dao;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Repository;

import ait.jan.sdqi.chemsdam.model.Credentials;
import ait.jan.sdqi.chemsdam.model.Resident;

@Repository
public interface ResidentDao 
{
	void register(Resident resident);
	Resident validate(HttpServletRequest req, Credentials details);
	void update(Resident resident);
}
