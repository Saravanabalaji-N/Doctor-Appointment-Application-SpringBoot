package com.chainsys.doctorappointment.dao;

import java.util.List;


import com.chainsys.doctorappointment.model.User;

public interface  UserDao {
	
	public void registration(User userDetails) ;

	public boolean login(User userDetails) ;
	
	public void update(User userDetails) ;
	
	public User view(User userDetails) ;
}

