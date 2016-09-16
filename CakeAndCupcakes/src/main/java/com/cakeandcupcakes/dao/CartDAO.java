package com.cakeandcupcakes.dao;

import java.util.List;

import com.cakeandcupcakes.model.Cart;


public interface CartDAO {
	public Cart getById( Integer id);
	public List<Cart> list();
}
