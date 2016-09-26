package com.cakeandcupcakes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakeandcupcakes.dao.OrderedDetailDAOImpl;
import com.cakeandcupcakes.model.OrderedDetail;

@Service
@Transactional
public class OrderedDetailService {

	@Autowired(required=true)	
	OrderedDetailDAOImpl orderedDetailDAO;
	public List<OrderedDetail> list(){
		return orderedDetailDAO.list();
	}
	public void saveOrUpdate(OrderedDetail orderedDetail){
		orderedDetailDAO.saveOrUpdate(orderedDetail);
	}
	public void delete(Integer OrderedDetailId) {
		orderedDetailDAO.delete(OrderedDetailId);
		
	}
	
}
