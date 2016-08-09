package com.niit.Backend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.Backend.dao.CartDAO;
import com.niit.Backend.model.Cart;



@Controller
public class CartController {
	
	
	@SuppressWarnings("unused")
	@Autowired
	private CartDAO cartDAO;
	
	@RequestMapping("{userId}/addtoCart/{id}")
	public String AddtoCart(@PathVariable("id") String Productid,@PathVariable("userId") int userId,Model model)throws Exception 
	{
		@SuppressWarnings("unused")
		Cart item=new Cart();
		
		
		
		model.addAttribute("Message", "Product Added to cart");
		return "Welcome";
	}

}
