package com.niit.Backend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class LoginController {

	@RequestMapping(value="/login")
	public ModelAndView openpage()
	{
		ModelAndView mv =new ModelAndView("login");
	
		return mv ;
	}
	@RequestMapping(value="/enterdetails",method=RequestMethod.POST)
	public String insertdetails()		
	{

		
		return "admin ";
	
	}

}
