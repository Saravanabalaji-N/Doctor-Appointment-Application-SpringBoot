package com.chainsys.doctorappointment.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.chainsys.doctorappointment.mapper.MappingDetails;
import com.chainsys.doctorappointment.model.User;

@Repository
public class UserImpl implements UserDao{

	@Autowired
	JdbcTemplate jdbcTemplate;

	public void registration(User userDetails) {
		String query = "insert into user_details(user_profile,user_name,user_mailId,user_password) values (?,?,?,?) ";
		Object[] params = { userDetails.getProfile(),userDetails.getUsername(), userDetails.getMailid(), userDetails.getPassword() };
		int rows = jdbcTemplate.update(query, params);
	}


	public boolean login(User userDetails) {

		String query = "select * from user_details where user_mailId=? and user_password=? and user_profile=?";
		User rows =jdbcTemplate.queryForObject(query, new MappingDetails(), userDetails.getMailid(), userDetails.getPassword(),userDetails.getProfile());
		
		if (rows != null) {
		return true;
		}
		return false;
	
}
	public void update(User userDetails) {
		String query = "update user_details set user_dob=?,user_location=?,user_phoneno=?,user_image=? where user_mailId=? ";
		System.out.println();
		Object[] params = {userDetails.getDob(),userDetails.getLocation(),userDetails.getPhoneno(), userDetails.getImage(),userDetails.getMailid()};
		int rows = jdbcTemplate.update(query, params);
	}
	
	public List<User> view(User userDetails) {
		
		String query = "select * from user_details where user_mailId=?";
		List<User> list =jdbcTemplate.query(query, new MappingDetails(),userDetails.getMailid());
		return list;
	}
	
	
}