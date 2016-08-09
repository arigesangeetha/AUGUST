package com.niit.Backend.dao;

import java.util.List;

import com.niit.Backend.model.Cart;



public interface CartDAO {

	public List<Cart> list();

	public Cart get(int UserId);

	public void saveOrUpdate(Cart cart);

	public void delete(int userId);
}
