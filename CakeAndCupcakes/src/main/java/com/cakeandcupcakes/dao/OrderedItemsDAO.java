package com.cakeandcupcakes.dao;

import java.util.List;

import com.cakeandcupcakes.model.OrderedItems;

public interface OrderedItemsDAO {

void saveOrUpdate(OrderedItems orderedItems );
	
	void delete(Integer orderedItemsId);
	
	List<OrderedItems> list();

}
