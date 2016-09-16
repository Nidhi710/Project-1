package com.cakeandcupcakes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakeandcupcakes.dao.CartDAOImpl;
import com.cakeandcupcakes.model.Cart;

@Service
@Transactional
public class CartService {
	@Autowired
	   CartDAOImpl cartDAO;
	
	   public List<Cart> list(){
			return cartDAO.list();
		}
	   public Cart getById(Integer userid){
			return cartDAO.getById(userid);
		}
	   public int cart(Integer userid){
		   return cartDAO.getById(userid).getCartid();
	   }
}
