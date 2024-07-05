package com.chainsys.doctorappointment.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.chainsys.doctorappointment.mapper.AddMapper;
import com.chainsys.doctorappointment.mapper.AppointmentMapping;
import com.chainsys.doctorappointment.mapper.DoctorMapping;
import com.chainsys.doctorappointment.mapper.MappingDetails;
import com.chainsys.doctorappointment.model.AppoitmentBook;
import com.chainsys.doctorappointment.model.Doctor;
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
		
try {
	
	User rows =jdbcTemplate.queryForObject(query, new MappingDetails(), userDetails.getMailid(), userDetails.getPassword(),userDetails.getProfile());

	return true;
}
catch(Exception e) {
	e.printStackTrace();
	return false;
}
	
	
}
	public void update(User userDetails) {
		String query = "update user_details set user_name=?,user_mailId=?,user_password=? where user_mailId=? ";
		System.out.println();
		Object[] params = {userDetails.getUsername(),userDetails.getMailid(),userDetails.getPassword(),userDetails.getMailid()};
		int rows = jdbcTemplate.update(query, params);
	}
	
	public User view(User userDetails) {
		
		String query = "select * from user_details where user_mailId=?";
		User user =jdbcTemplate.queryForObject(query, new MappingDetails(),userDetails.getMailid());
		return user;
	}
	
		public String userview(Doctor doctor) {
	
		String query = "select * from doctor_details where doctor_mailId=?";
		return jdbcTemplate.queryForObject(query, new DoctorMapping(),doctor.getDoctorMail());
	}


	
	public void appointmentbooking(AppoitmentBook booking) {
		String query = "insert into appointment_details(id,user_name,user_mailid,doctor_specialization,appointment_date,appointment_time) values (?,?,?,?,?,?) ";
		Object[] params = {booking.getUserId(),booking.getAppointUser(),booking.getAppointMailId(), booking.getAppointDisease(),booking.getAppointDate(),booking.getAppointTime()};
		int rows = jdbcTemplate.update(query, params);
	}
	
	public List<AppoitmentBook> doctorview(String specs) {
		String query = "select appointment_id,user_name,user_mailid,doctor_specialization,appointment_date,appointment_time from appointment_details where doctor_specialization=?";
		List<AppoitmentBook> list=jdbcTemplate.query(query, new AppointmentMapping(),specs);
		
		return list;
	}



	public void doctorinsert(Doctor doctor) {
		String query = "insert into doctor_details(doctor_mailId,doctor_name,doctor_specialization,doctor_image) values (?,?,?,?) ";
		Object[] params = {doctor.getDoctorMail(),doctor.getDoctorName(),doctor.getDoctorSpecs(),doctor.getDoctorid()};
		int rows = jdbcTemplate.update(query, params);
	}


	public List<Doctor> add(Doctor doctor) {
		
		String query = "select * from doctor_details where doctor_mailId=?";
		 List<Doctor> list= (List<Doctor>) jdbcTemplate.queryForObject(query, new AddMapper(),doctor.getDoctorMail());
		 return list;
	}



}