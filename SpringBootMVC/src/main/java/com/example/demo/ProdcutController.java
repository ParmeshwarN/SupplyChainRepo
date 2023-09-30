package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ProdcutController {
	
	@Autowired
	ProductRepository repo;
	
	@GetMapping("/placeOrder")
public String 	registerCustomer(HttpServletRequest req){
		Product prod=new Product();
		prod.setProdName(req.getParameter("prodName"));
		prod.setDeliveryAddress(req.getParameter("address"));
		prod.setQuantity(Integer.parseInt(req.getParameter("quantity")));
		repo.save(prod);
		return "welcome.jsp";
	}
	

}
