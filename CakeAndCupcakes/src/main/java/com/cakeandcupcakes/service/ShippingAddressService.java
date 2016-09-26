package com.cakeandcupcakes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakeandcupcakes.dao.ShippingAddressDAOImpl;
import com.cakeandcupcakes.model.ShippingAddress;

@Service
@Transactional
public class ShippingAddressService {
	@Autowired(required=true)	
	ShippingAddressDAOImpl shippingAddressDAO;
	
	public List<ShippingAddress> list(){
		return shippingAddressDAO.list();
	}
	public void saveOrUpdate(ShippingAddress shippingAddress){
		shippingAddressDAO.saveOrUpdate(shippingAddress);
	}
	public void delete(Integer ShippingAddressId) {
		shippingAddressDAO.deleteShippingAddress(ShippingAddressId);
		
	}
	public ShippingAddress get(Integer ShippingAddressId){
		return shippingAddressDAO.getShippingAddress(ShippingAddressId);
	}
}
