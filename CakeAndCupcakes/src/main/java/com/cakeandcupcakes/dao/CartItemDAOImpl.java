package com.cakeandcupcakes.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cakeandcupcakes.model.CartItem;



@Repository
public class CartItemDAOImpl {
@Autowired
private SessionFactory sessionFactory;
public CartItemDAOImpl(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}

public void saveOrUpdate(CartItem cartItem) {
	sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
}
public List<CartItem> list() {
	
	@SuppressWarnings("unchecked")
	List<CartItem> listCartItem = (List<CartItem>) 
	          sessionFactory.getCurrentSession()
			.createCriteria(CartItem.class)
			.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	
	return listCartItem;
}



}
