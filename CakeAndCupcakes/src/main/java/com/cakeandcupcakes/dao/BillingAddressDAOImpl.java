package com.cakeandcupcakes.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cakeandcupcakes.model.BillingAddress;

@Repository
public class BillingAddressDAOImpl implements BillingAddressDAO{

	@Autowired(required=true)
	SessionFactory sessionFactory;

	public BillingAddressDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	public void saveOrUpdate(BillingAddress billingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(billingAddress);

	}

	
	public void deleteBillingAddress(Integer billingAddressId) {
		BillingAddress billingAddressToDelete = new BillingAddress();
		billingAddressToDelete.setBillingAddressId(billingAddressId);
		sessionFactory.getCurrentSession().delete(billingAddressToDelete);

	}

public List<BillingAddress> list() {
		
		@SuppressWarnings("unchecked")
		List<BillingAddress> listBillingAddress = (List<BillingAddress>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(BillingAddress.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listBillingAddress;
	}
	
public BillingAddress getBillingAddress( Integer BillingAddressId) {
	
	String hql = "from BillingAddress where id=" + "'"+ BillingAddressId +"'";
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	
	@SuppressWarnings("unchecked")
	List<BillingAddress> listBillingAddress = (List<BillingAddress>) query.list();
	
	if (listBillingAddress != null && !listBillingAddress.isEmpty()) {
		return listBillingAddress.get(0);
	}
	
	return null;
}

}
