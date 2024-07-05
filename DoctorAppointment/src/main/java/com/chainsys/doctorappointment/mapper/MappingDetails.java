package com.chainsys.doctorappointment.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.chainsys.doctorappointment.model.User;

public class MappingDetails implements RowMapper<User> {


	
	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		String name=rs.getString("user_name");
		String mail=rs.getString("user_mailId");
		String pass=rs.getString("user_password");
		
		User details=new User();
		details.setUsername(name);
		details.setMailid(mail);
		details.setPassword(pass);
		
		return details;
		
		
	}

}
