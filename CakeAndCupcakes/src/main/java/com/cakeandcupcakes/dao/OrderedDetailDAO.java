package com.cakeandcupcakes.dao;

import java.util.List;

import com.cakeandcupcakes.model.OrderedDetail;

public interface OrderedDetailDAO {
	void saveOrUpdate(OrderedDetail orderDetail);

	void delete(Integer orderDetailId);

	List<OrderedDetail> list();

}
