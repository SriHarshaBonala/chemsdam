package ait.jan.sdqi.chemsdam.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import ait.jan.sdqi.chemsdam.model.Credentials;
import ait.jan.sdqi.chemsdam.model.Resident;

@Service
public class ResidentDaoImpl implements ResidentDao
{
	@Autowired JdbcTemplate template;
	
	@Override
	public void register(Resident resident) 
	{
		String sql = "insert into dam_resident_details values (?,?,?,?)";
		String sql1 = "insert into dam_resident_credentials values (?,?,?)";
		template.update(sql, new Object[] {resident.getResident_flat_number(), resident.getResident_name(),  resident.getResident_mobile_number(), resident.getResident_email()});
		template.update(sql1, new Object[] {resident.getResident_flat_number(), resident.getUsername(), resident.getPassword()});
	}

	@Override
	public Resident validate(HttpServletRequest req, Credentials details) 
	{
		String sql = "select * from dam_resident_credentials where username='" + details.getUsername() + "' and password='" + details.getPassword() + "'";
		List<Resident> residents = template.query(sql, new UserMapper());
		return residents.size() > 0 ? residents.get(0) : null;
	}

	@Override
	public void update(Resident resident) 
	{
		String sql = "update dam_resident_credentials set password= ? where resident_flat_number= ? and username= ?";
		template.update(sql, new Object[] {resident.getPassword(), resident.getResident_flat_number(), resident.getUsername()});
	}
}

class UserMapper implements RowMapper<Resident>
{
	public Resident mapRow(ResultSet rs, int arg1) throws SQLException
	{
		Resident resident = new Resident();
		resident.setUsername(rs.getString("username"));
		resident.setPassword(rs.getString("password"));
		resident.setResident_flat_number(rs.getString("resident_flat_number"));
		return resident;
	}
}
