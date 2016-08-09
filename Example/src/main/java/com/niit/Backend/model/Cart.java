package com.niit.Backend.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Cart {

	@Id
	@GeneratedValue
	private int id;
	public int getId() {
		return id;
	}
	public int getUserid() {
		return userid;
	}
	public String getProductname() {
		return productname;
	}
	public int getPrice() {
		return price;
	}
	public int getQuantity() {
		return quantity;
	}
	public String getStatus() {
		return status;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	private int userid;
	private String productname;
	private int price;
	private int quantity;
	private String status;
	
	
	
}
