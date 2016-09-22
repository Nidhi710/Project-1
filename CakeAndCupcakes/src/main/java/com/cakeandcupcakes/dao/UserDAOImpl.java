package com.cakeandcupcakes.dao;







import java.util.List;

import org.hibernate.Criteria;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cakeandcupcakes.model.Cart;
import com.cakeandcupcakes.model.User;
@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	 private SessionFactory sessionFactory;
	

	public UserDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
public List<User> list() {
		
		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listUser;
	}
	public void saveOrUpdate(User user) {
		
		Session session = sessionFactory.getCurrentSession();
		Cart cart= new Cart();
		
		cart.setUserid(user.getUserId());
		session.saveOrUpdate(cart);
		
		user.setCartid(cart.getCartid());
		session.saveOrUpdate(user);
		cart.setUserid(user.getUserId());
		session.saveOrUpdate(cart);
		user.setEnabled(true);
		user.setRole("ROLE_USER");
		session.flush();
				
				
		/*sessionFactory.getCurrentSession().saveOrUpdate(user);*/
		
	}
	public User getById(Integer id) {
		Session session=sessionFactory.openSession();
		Criteria c = session.createCriteria(User.class);
		c.add(Restrictions.eq("userId", id));
		@SuppressWarnings("unchecked")
		List<User> user = c.list();
		session.flush();
		return user.get(0);

	}
	public User getByName(String name){

		Session session=sessionFactory.openSession();
		Criteria c = session.createCriteria(User.class);
		c.add(Restrictions.eq("username", name));
		@SuppressWarnings("unchecked")
		List<User> user = c.list();
		session.flush();
		return user.get(0);
	}
}
