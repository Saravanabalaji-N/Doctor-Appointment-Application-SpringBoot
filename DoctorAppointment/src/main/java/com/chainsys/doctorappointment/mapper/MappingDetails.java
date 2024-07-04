package com.chainsys.doctorappointment.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.chainsys.doctorappointment.model.User;

public class MappingDetails implements RowMapper<User> {


	
	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		String mail=rs.getString("user_mailId");
		String pass=rs.getString("user_password");
		String location=rs.getString("user_location");
		String dob=rs.getString("user_dob");
		String phone=rs.getString("user_phoneno");
		String image=rs.getString("user_image");
		
		User details=new User();
		details.setMailid(mail);
		details.setPassword(pass);
		details.setLocation(location);
		details.setDob(dob);
		details.setPhoneno(phone);
		details.setImage(image);
		return details;
		
		
	}

}
