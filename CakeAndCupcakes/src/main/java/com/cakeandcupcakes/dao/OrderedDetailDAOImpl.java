package com.cakeandcupcakes.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cakeandcupcakes.model.OrderedDetail;

@Repository
public class OrderedDetailDAOImpl implements OrderedDetailDAO {

	@Autowired(required=true)
	SessionFactory sessionFactory;

	public OrderedDetailDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	public void saveOrUpdate(OrderedDetail orderedDetail) {
		sessionFactory.getCurrentSession().saveOrUpdate(orderedDetail);

	}

	
	public void delete(Integer orderedDetailId) {
		OrderedDetail orderedDetailTodelete = new OrderedDetail();
		orderedDetailTodelete.setOrderDetailId(orderedDetailId);

	}

	
public List<OrderedDetail> list() {
		
		@SuppressWarnings("unchecked")
		List<OrderedDetail> listOrderedDetail = (List<OrderedDetail>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(OrderedDetail.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listOrderedDetail;
	}

	
	

}


