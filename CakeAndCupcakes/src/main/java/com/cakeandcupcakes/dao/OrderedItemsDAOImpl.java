package com.cakeandcupcakes.dao;

import java.util.List;

import org.hibernate.Criteria;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.cakeandcupcakes.model.OrderedItems;

@Repository
public class OrderedItemsDAOImpl {

	@Autowired
	SessionFactory sessionFactory;

	public OrderedItemsDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void saveOrUpdate(OrderedItems orderedItems) {
		sessionFactory.getCurrentSession().saveOrUpdate(orderedItems);

	}

	@Transactional
	public void delete(Integer orderedItemsId) {
		OrderedItems orderedItemsTodelete = new OrderedItems();
		orderedItemsTodelete.setOrderedItemId(orderedItemsId);
		sessionFactory.getCurrentSession().delete(orderedItemsTodelete);

	}

	@Transactional
public List<OrderedItems> list() {
		
		@SuppressWarnings("unchecked")
		List<OrderedItems> listOrderedItems = (List<OrderedItems>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(OrderedItems.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listOrderedItems;
	}

}


