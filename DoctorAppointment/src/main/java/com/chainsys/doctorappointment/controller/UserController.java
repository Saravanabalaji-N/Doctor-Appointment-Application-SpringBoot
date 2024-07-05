package com.chainsys.doctorappointment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.doctorappointment.dao.UserDao;
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
	public String registeration(@RequestParam("name") String name,@RequestParam("mail") String mail, @RequestParam("password") String pass) {

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
				System.out.println(user.getMailid()+"2222222222222222");
				session.setAttribute("list", user);
				return "redirect:/patient.jsp";
			}
		}
		else if (profile.equals("Doctor")) {
			if (userDAO.login(userDetails) == true) {
				session.setAttribute("mail", mail);
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


}