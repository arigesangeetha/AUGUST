package com.niit.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;




@Entity
@Table(name="Product")
@Component

public class Product {
	
	
	@Id
	private String id;
	
	private String name;
	private String description;
	private String price;
	
	
	
}
