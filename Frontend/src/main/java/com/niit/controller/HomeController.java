package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.models.Category;
import com.niit.models.Product;
import com.niit.models.Supplier;

@Controller
public class HomeController {
	
	 @Autowired
	 private ProductDAO productDAO;
	   

	 @SuppressWarnings("unused")
	@Autowired
	 private Product product;
	 
	 @Autowired
	 private CategoryDAO categoryDAO;
	 
	 
	 @Autowired
	 private SupplierDAO supplierDAO;
	 
	 
		@RequestMapping(value="registerproduct")
		public ModelAndView openAddProduct()
		{
			ModelAndView mv =new ModelAndView("registerproduct");
		
			return mv ;
		}
	   
		
		
		@RequestMapping(value="/insertProductValues",method=RequestMethod.POST)
		public String insertProduct(Product  product)		
		{

			productDAO.saveOrUpdate(product);
			return "index";
		
		}
		

		@RequestMapping(value = { "/product", "editproduct/product" , "editcategory/product","editsupplier/product"})
		public String listCategory(Model model) {
			model.addAttribute("product", new Product());
			
			model.addAttribute("ProductPageClicked", "true");
			return "productedit";
		}
		@RequestMapping(value={"/editproduct"})
		public ModelAndView listProduct(Product product) {
			productDAO.saveOrUpdate(product);
			ModelAndView mv=new ModelAndView("index","productList", productDAO.list());
			return mv;
			
		
		}
		
		@RequestMapping(value={"/home"})
		public ModelAndView listProduct1() {
			ModelAndView mv=new ModelAndView("home","productList", productDAO.list());
			return mv;
			
		
		}
		@RequestMapping(value="/productedit/{id}", method=RequestMethod.POST)
		public String editProduct(@PathVariable("id") String id, Model model) {
			System.out.println("editProduct");
			model.addAttribute("product", this.productDAO.get(id));
			model.addAttribute("productList", productDAO.list());
		
			return "productedit";
		}

		@RequestMapping(value = { "removeproduct/{id}"})
		public String removeproduct(@PathVariable("id") String id, Model model) throws Exception {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully Deleted");
			return "productedit";
		}
	
		
		 @RequestMapping(value="registercategory")
		public ModelAndView openAddcategory()
		{
			ModelAndView mv =new ModelAndView("registercategory");
			return mv ;
		}
		

		@RequestMapping(value="/insertcategoryValues",method=RequestMethod.POST)
		public String insertCategory(Category category)		
		{
			categoryDAO.saveOrUpdate(category);
			return "home";
		
		}
		
		@RequestMapping(value="registersuppiler")
		public ModelAndView openAddsupplier()
		{
			ModelAndView mv =new ModelAndView("registersupplier");
			return mv ;
		}
	   

		@RequestMapping(value="/insertsupplierValues",method=RequestMethod.POST)
		public String insertSupplier(Supplier supplier)		
		{
			supplierDAO.saveOrUpdate(supplier);
			return "home";
		}
			
		
}
		

