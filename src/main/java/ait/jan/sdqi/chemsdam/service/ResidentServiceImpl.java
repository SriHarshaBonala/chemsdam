package ait.jan.sdqi.chemsdam.service;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ait.jan.sdqi.chemsdam.dao.ResidentDao;
import ait.jan.sdqi.chemsdam.model.Credentials;
import ait.jan.sdqi.chemsdam.model.Resident;

@Service
public class ResidentServiceImpl implements ResidentService
{
	@Autowired ResidentDao rdao;
	
	public void register(Resident resident) {
		rdao.register(resident);
	}

	public Resident validate(HttpServletRequest req, Credentials details) {
		return rdao.validate(req, details);
	}

	@Override
	public void update_password(Resident resident) {
		rdao.update(resident);
	}

}
