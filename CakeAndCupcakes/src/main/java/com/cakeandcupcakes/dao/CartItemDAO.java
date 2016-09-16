package com.cakeandcupcakes.dao;

import java.util.List;

import com.cakeandcupcakes.model.CartItem;



public interface CartItemDAO {
	public void saveOrUpdate(CartItem cartItem);
	public List<CartItem> list();
}
