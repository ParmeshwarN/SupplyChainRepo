package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class DealerController {

	@Autowired
	DealerRepository repo;
	
	@GetMapping("/registerDealer")
public String 	registerDealer(HttpServletRequest req){
		Dealer dealer=new Dealer();
		dealer.setOrgName(req.getParameter("orgName"));
		dealer.setContactPerson(req.getParameter("contactPerson"));
		dealer.setContactNumber(req.getParameter("contactNumber"));
		dealer.setOfficialEmail(req.getParameter("email"));
		dealer.setWarehouseAddress(req.getParameter("warehouseAddress"));
		dealer.setOfficeAddress(req.getParameter("officialAddress"));
	    repo.save(dealer);
	    System.out.println("hello from dealerController");
		return "welcome.jsp";
	}
	
}
