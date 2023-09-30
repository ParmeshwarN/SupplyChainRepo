package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.servlet.http.HttpServletRequest;

@RestController
public class AdminController {
	@Autowired
	AdminRepository repo;
	
	@GetMapping("/validateAdmin")
	public String validate(HttpServletRequest req) {
		String page=null;
		String userName=req.getParameter("user");
		String password=req.getParameter("password");
		/*
		 * if(userName.equals("SEED")&& password.equals("admin")) {
		 * System.out.println("You LoggedIn As Admin "); }else {
		 * System.out.println("Wrong Credentials"); }
		 */
		
	List<Admin> list=repo.findAll();
	for (Admin admin : list) {
		System.out.println(admin);
		if(admin.getUserName().equals(userName)&& admin.getPassword().equals(password) ) {
			page="success.jsp";
		}else {
			page="error.jsp";
		}
		
	}
return page;
	}

}
