package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class AddController {
	@GetMapping("/hr")
	public String test() {
		System.out.println("hello from test()");
		return "welcome.jsp";
	}
	@GetMapping("/add")
	public String add(HttpServletRequest req,HttpServletResponse resp) {
		System.out.println("from add() of AddContoller");
		int v1=Integer.parseInt(req.getParameter("num1"));
		int v2=Integer.parseInt(req.getParameter("num2"));
		int result=v1+v2;
		System.out.println(result);
		req.setAttribute("Result", result);
		return "welcome.jsp";
	}
	//@GetMapping("/add2")
	@RequestMapping(method = RequestMethod.GET,value = "/add2")
	public String add2(int a,int b,HttpServletRequest req) {
		System.out.println("from add() of AddContoller");
		int v1=a;
		int v2=b;
		int result=v1+v2;
		System.out.println(result);
		req.setAttribute("Result", result);
		return "welcome.jsp";
	}
	
	@GetMapping("/multi")
	public ModelAndView mul(  int a, int b) {
		ModelAndView mv=new ModelAndView();
			System.out.println("from add() of AddContoller");
			int v1=a;
			int v2=b;
			int result=new AddService().multi(v1, v2);
			System.out.println(result);
			mv.addObject("k1", result);
			mv.setViewName("welcome.jsp");
			return mv;
		}
}
