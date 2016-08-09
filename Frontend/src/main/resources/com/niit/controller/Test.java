package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.ProductDAO;
import com.niit.models.Product;

@Controller
public class Test {

	
	@Autowired
	private ProductDAO productDAO;
	@RequestMapping(value="insertProductValues", method=RequestMethod.POST)
	public String register(Product product)
	{
		productDAO.saveOrUpdate(product);
		return "home";
	}

	
	/*
	@RequestMapping(value="addproduct")
	public ModelAndView openAddProduct()
	{
		ModelAndView mv =new ModelAndView("index");
		mv.addObject("ADDPRODUCTISCLICKED", "true");
		mv.addObject("ADDCATEGORYISCLICKED", "false");
		return mv;
	}
	@RequestMapping(value="addcategory")
	public ModelAndView openAddCategory()
	{
		ModelAndView mv =new ModelAndView("index");
		mv.addObject("ADDPRODUCTISCLICKED", "false");
		mv.addObject("ADDCATEGORYISCLICKED", "true");
		return mv;
	}*/
	
}
