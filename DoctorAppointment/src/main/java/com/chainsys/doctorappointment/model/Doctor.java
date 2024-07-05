package com.chainsys.doctorappointment.model;

import org.springframework.stereotype.Component;

@Component
public class Doctor {

	String doctorid;
	String doctorName;
	String doctorMail;
	String doctorSpecs;
	String doctorImage;
	
	
	public String getDoctorid() {
		return doctorid;
	}
	public void setDoctorid(String doctorid) {
		this.doctorid = doctorid;
	}
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public String getDoctorMail() {
		return doctorMail;
	}
	public void setDoctorMail(String doctorMail) {
		this.doctorMail = doctorMail;
	}
	public String getDoctorSpecs() {
		return doctorSpecs;
	}
	public void setDoctorSpecs(String doctorSpecs) {
		this.doctorSpecs = doctorSpecs;
	}
	public String getDoctorImage() {
		return doctorImage;
	}
	public void setDoctorImage(String doctorImage) {
		this.doctorImage = doctorImage;
	}
	
	
}
