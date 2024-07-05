package com.chainsys.doctorappointment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.doctorappointment.dao.UserDao;
import com.chainsys.doctorappointment.model.AppoitmentBook;
import com.chainsys.doctorappointment.model.Doctor;
import com.chainsys.doctorappointment.model.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	@Autowired
	UserDao userDAO;

	@Autowired
	User userDetails;

	@Autowired
	AppoitmentBook booking;

	@Autowired
	Doctor doctor;

	@RequestMapping("/home")
	public String home() {
		return "home.jsp";
	}

	@PostMapping("/registration")
	public String registeration(@RequestParam("username") String name, @RequestParam("profile") String profile,
			@RequestParam("mail") String mail, @RequestParam("pass") String pass,
			@RequestParam("repass") String repass) {

		if (pass.equals(repass)) {
			userDetails.setProfile(profile);
			userDetails.setUsername(name);
			userDetails.setMailid(mail);
			userDetails.setPassword(pass);

			userDAO.registration(userDetails);
		}

		return "registration.jsp";
	}

	@PostMapping("/update")
	public String registeration(@RequestParam("name") String name, @RequestParam("mail") String mail,
			@RequestParam("password") String pass) {

		userDetails.setUsername(name);
		userDetails.setMailid(mail);
		userDetails.setPassword(pass);

		userDAO.update(userDetails);

		return "registration.jsp";
	}

	@PostMapping("/login")
	public String registeration(@RequestParam("mail") String mail, @RequestParam("pass") String password,
			@RequestParam("profile") String profile, HttpServletRequest request, HttpServletResponse responses) {
		HttpSession session = request.getSession();
		userDetails.setProfile(profile);
		userDetails.setMailid(mail);
		userDetails.setPassword(password);

		if (profile.equals("Patient")) {
			if (userDAO.login(userDetails) == true) {
				session.setAttribute("mail", mail);
				User user = userDAO.view(userDetails);
				session.setAttribute("list", user);
				return "redirect:/patient.jsp";
			}
		} else if (profile.equals("Doctor")) {
			if (userDAO.login(userDetails) == true) {
				session.setAttribute("mail", mail);
				User user = userDAO.view(userDetails);
				session.setAttribute("list", user);
				List<Doctor> addlist=userDAO.add(doctor);
				session.setAttribute("add", addlist);
				return "redirect:/doctor.jsp";
			}
		}
		return "redirect:/home.jsp";
	}

	@PostMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession(false);
		session.invalidate();
		return "redirect:/home.jsp";

	}

	@PostMapping("/booking")
	public String booking(@RequestParam("mail") String mail, @RequestParam("disease") String disease,
			@RequestParam("date") String date, @RequestParam("time") String time) {

		userDetails.setMailid(mail);
		User user = userDAO.view(userDetails);
		booking.setAppointUser(user.getUsername());
		booking.setAppointMailId(user.getMailid());
		booking.setUserId(user.getId());
		booking.setAppointDisease(disease);
		booking.setAppointDate(date);
		booking.setAppointTime(time);

		userDAO.appointmentbooking(booking);
		return "patient.jsp";

	}

	@PostMapping("/doctorinsert")
	public String doctorinsert(@RequestParam("name") String name, @RequestParam("mail") String mail,
			@RequestParam("specs") String specs, @RequestParam("image") String image) {

		doctor.setDoctorName(name);
		doctor.setDoctorMail(mail);
		doctor.setDoctorSpecs(specs);
		doctor.setDoctorImage(image);
		userDAO.doctorinsert(doctor);
		return "doctor.jsp";
	}
	
	@PostMapping("/doctorview")
	public String doctorview(@RequestParam("mail") String mail, HttpServletRequest request,
			HttpServletResponse response) {

		HttpSession session = request.getSession();
	
		doctor.setDoctorMail(mail);
		
		String Specs=userDAO.userview(doctor);
		
		List<AppoitmentBook> appointbooking= userDAO.doctorview(Specs);
		session.setAttribute("view", appointbooking);
		return "view.jsp";
	}
	
//	@PostMapping("/add")
//	public String add(@RequestParam("mail") String mail, HttpServletRequest request,
//			HttpServletResponse response) {
//		
//		String Specs=userDAO.add(mail);
//				return mail;
//		
//	}
}