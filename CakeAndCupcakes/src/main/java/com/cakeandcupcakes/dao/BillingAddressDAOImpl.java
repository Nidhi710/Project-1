package com.cakeandcupcakes.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cakeandcupcakes.model.BillingAddress;
@Repository
public class BillingAddressDAOImpl implements BillingAddressDAO{

	@Autowired
	SessionFactory sessionFactory;

	public BillingAddressDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void saveOrUpdate(BillingAddress billingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(billingAddress);

	}

	@Transactional
	public void deleteBillingAddress(Integer billingAddressId) {
		BillingAddress billingAddressToDelete = new BillingAddress();
		billingAddressToDelete.setBillingAddressId(billingAddressId);
		sessionFactory.getCurrentSession().delete(billingAddressToDelete);

	}

	@Transactional
	public BillingAddress getBillingAddress(Integer billingAddressId) {
		return sessionFactory.getCurrentSession().get(BillingAddress.class, billingAddressId);
	}

}
