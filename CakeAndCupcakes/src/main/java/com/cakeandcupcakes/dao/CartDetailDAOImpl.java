package com.cakeandcupcakes.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cakeandcupcakes.model.CartDetail;
@Repository
public class CartDetailDAOImpl {


	@Autowired
	private SessionFactory sessionFactory;

	public CartDetailDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public void saveOrUpdate(CartDetail cartDetail) {
	sessionFactory.getCurrentSession().saveOrUpdate(cartDetail);

	}


}
