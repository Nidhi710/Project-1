package com.cakeandcupcakes.dao;

import java.util.List;

import com.cakeandcupcakes.model.Cart;


public interface CartDAO {
	
	public void saveOrUpdate(Cart cart);
   	public Cart getById( Integer id);
	public List<Cart> list();
}
