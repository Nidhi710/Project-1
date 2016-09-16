package com.cakeandcupcakes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakeandcupcakes.dao.CartItemDAOImpl;
import com.cakeandcupcakes.model.CartItem;


@Service
@Transactional
public class CartItemService {
	@Autowired
	   CartItemDAOImpl cartItemDAO;
	   
	   public void saveOrUpdate(CartItem cartItem){
		   cartItemDAO.saveOrUpdate(cartItem);
	   }
	   public List<CartItem> list(){
			return cartItemDAO.list();
		}
}
