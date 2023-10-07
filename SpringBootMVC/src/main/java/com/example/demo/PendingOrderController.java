package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PendingOrderController {
	@Autowired
	ProductRepository prodRepo;
	
	@Autowired
	CustomerRepository custRepo;
	
	@GetMapping("/getData")
	public ModelAndView getData() {
		ModelAndView mv=new ModelAndView();
	List<Product> prodList=	prodRepo.findAll();
	for (Product product : prodList) {
		System.out.println(product);
	}
	//proN,q,da             
	 List<Customer>  custList= custRepo.findAll();
	 //custname
	 for (Customer customer : custList) {
		System.out.println(customer);
	}
	mv.setViewName("data.jsp");
	mv.addObject("pl",prodList);
	mv.addObject("cl",custList);
		return mv;
	}

	@GetMapping("/getData2")
	public ModelAndView getData2() {
		ModelAndView mv=new ModelAndView();
	List<Product> prodList=	prodRepo.findAll();
	for (Product product : prodList) {
		System.out.println(product);
	}
	//proN,q,da             
	 List<Customer>  custList= custRepo.findAll();
	 //custname
	 for (Customer customer : custList) {
		System.out.println(customer);
	}
	mv.setViewName("data2.jsp");
	mv.addObject("pl",prodList);
	mv.addObject("cl",custList);
		return mv;
	}
	
	@GetMapping("/getData3")
	public ModelAndView getData3() {
		ModelAndView mv=new ModelAndView();
	List<Product> prodList=	prodRepo.findAll();
	for (Product product : prodList) {
		System.out.println(product);
	}
	//proN,q,da             
	 List<Customer>  custList= custRepo.findAll();
	 //custname
	 for (Customer customer : custList) {
		System.out.println(customer);
	}
	mv.setViewName("data3.jsp");
	mv.addObject("pl",prodList);
	mv.addObject("cl",custList);
		return mv;
	}

}
