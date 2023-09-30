package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class CustomerController {
	@Autowired
	CustomerRepository repo;
	
	@GetMapping("/registerCustomer")
public String 	registerCustomer(HttpServletRequest req){
		Customer customer=new Customer();
		customer.setOrgName(req.getParameter("orgName"));
		customer.setContactPerson(req.getParameter("contactPerson"));
		customer.setContactNumber(req.getParameter("contactNumber"));
		customer.setOfficialEmail(req.getParameter("email"));
	    repo.save(customer);
	    System.out.println("hello from CustomerController");
		return "welcome.jsp";
	}
	
	@PostMapping("/registerCustomer2")
	@ResponseBody
	public Customer registerCustomer2(@RequestBody Customer customer){
			
		    repo.save(customer);
		    System.out.println("hello from CustomerController");
			return customer;
		}

}
