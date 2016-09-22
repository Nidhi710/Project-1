package com.cakeandcupcakes.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cakeandcupcakes.model.ShippingAddress;
@Repository
public class ShippingAddressDAOImpl implements ShippingAddressDAO {
	public ShippingAddressDAOImpl() {

	}
	@Autowired
	private SessionFactory sessionFactory;


	public ShippingAddressDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public List<ShippingAddress> list() {
		
		@SuppressWarnings("unchecked")
		List<ShippingAddress> listShippingAddress = (List<ShippingAddress>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(ShippingAddress.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listShippingAddress;
	}
	public void saveOrUpdate(ShippingAddress shippingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
	}
	public void deleteShippingAddress( Integer ShippingAddressId) {
		ShippingAddress ShippingAddressToDelete = new ShippingAddress();
		ShippingAddressToDelete.setShippingAddressId(ShippingAddressId);
		sessionFactory.getCurrentSession().delete(ShippingAddressToDelete);
	}


	
	public ShippingAddress getShippingAddress( Integer ShippingAddressId) {
		
		String hql = "from ShippingAddress where id=" + "'"+ ShippingAddressId +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<ShippingAddress> listShippingAddress = (List<ShippingAddress>) query.list();
		
		if (listShippingAddress != null && !listShippingAddress.isEmpty()) {
			return listShippingAddress.get(0);
		}
		
		return null;
	}
	
	
}
