package com.chainsys.doctorappointment.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.chainsys.doctorappointment.model.Doctor;

public class AddMapper implements RowMapper<Doctor> {

	@Override
	public Doctor mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		String name=rs.getString("doctor_name");
		String mail=rs.getString("doctor_mailId");
		String specalization=rs.getString("doctor_id");
		String image=rs.getString("doctor_image");
		
		Doctor doctor=new Doctor();
		doctor.setDoctorName(name);
		doctor.setDoctorMail(mail);
		doctor.setDoctorSpecs(specalization);
		doctor.setDoctorImage(image);
		return doctor;
	}

}
