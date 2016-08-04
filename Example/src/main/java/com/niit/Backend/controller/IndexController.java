package com.niit.Backend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class IndexController {

	@RequestMapping(value="login")
	public String login()
	{
		return "login";
	}
	@RequestMapping(value="signup")
	public String submit()
	{
		return "registration";
	}


}

