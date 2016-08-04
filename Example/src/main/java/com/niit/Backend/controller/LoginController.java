package com.niit.Backend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class LoginController {

	@RequestMapping(value="submit")
	public String login()
	{
		return "admin";
	}
	@RequestMapping(value="signup1")
	public String submit()
	{
		return "login";
	}

	

}
