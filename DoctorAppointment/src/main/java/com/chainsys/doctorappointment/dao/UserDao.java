package com.chainsys.doctorappointment.dao;

import java.util.List;

import com.chainsys.doctorappointment.model.AppoitmentBook;
import com.chainsys.doctorappointment.model.Doctor;
import com.chainsys.doctorappointment.model.User;

public interface  UserDao {
	
	public void registration(User userDetails) ;

	public boolean login(User userDetails) ;
	
	public void update(User userDetails) ;
	
	public User view(User userDetails) ;
	
	public void appointmentbooking(AppoitmentBook booking);
	
	public List<AppoitmentBook> doctorview(String specs);
	
	public String userview(Doctor doctor);
	
	public void doctorinsert(Doctor doctor);
	
	public List<Doctor> add(Doctor doctor);
}

