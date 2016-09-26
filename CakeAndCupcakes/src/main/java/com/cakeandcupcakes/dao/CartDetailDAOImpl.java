package com.cakeandcupcakes.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.cakeandcupcakes.model.CartDetail;

@Repository
public class CartDetailDAOImpl implements CartDetailDAO {


	@Autowired(required=true)
	private SessionFactory sessionFactory;

	public CartDetailDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	public void saveOrUpdate(CartDetail cartDetail) {
	sessionFactory.getCurrentSession().saveOrUpdate(cartDetail);

	}


}
