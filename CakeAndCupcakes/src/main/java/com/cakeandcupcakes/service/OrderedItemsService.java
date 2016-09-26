package com.cakeandcupcakes.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakeandcupcakes.dao.OrderedItemsDAOImpl;
import com.cakeandcupcakes.model.OrderedItems;

@Service
@Transactional
public class OrderedItemsService{

	@Autowired(required=true)	
	OrderedItemsDAOImpl orderedItemsDAO;
	public List<OrderedItems> list(){
		return orderedItemsDAO.list();
	}
	public void saveOrUpdate(OrderedItems orderedItems){
		orderedItemsDAO.saveOrUpdate(orderedItems);
	}
	public void delete(Integer OrderedItemsId) {
		orderedItemsDAO.delete(OrderedItemsId);
		
	}
}
