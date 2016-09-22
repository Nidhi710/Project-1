package com.cakeandcupcakes.dao;

import java.util.List;

import com.cakeandcupcakes.model.ShippingAddress;

public interface ShippingAddressDAO {

	

		public void saveOrUpdate(ShippingAddress shippingAddress);
		
		public void deleteShippingAddress(Integer ShippingAddressId);
		
		public ShippingAddress getShippingAddress(Integer ShippingAddressId);
		public List<ShippingAddress> list();

}
