package com.cakeandcupcakes.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cakeandcupcakes.model.Cart;


@Repository
public class CartDAOImpl implements CartDAO {
	public CartDAOImpl(){
}
@Autowired
private SessionFactory sessionFactory;
public CartDAOImpl(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}

public List<Cart> list() {
	
	@SuppressWarnings("unchecked")
	List<Cart> listCart = (List<Cart>) 
	          sessionFactory.getCurrentSession()
			.createCriteria(Cart.class)
			.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	
	return listCart;
}
public Cart getById(Integer userid) {
	Session session=sessionFactory.openSession();
	Criteria c = session.createCriteria(Cart.class);
	c.add(Restrictions.eq("userid", userid));
	@SuppressWarnings("unchecked")
	List<Cart> cart = c.list();
	session.flush();
	return cart.get(0);
}
}