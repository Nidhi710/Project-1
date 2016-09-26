package com.cakeandcupcakes.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakeandcupcakes.dao.BillingAddressDAOImpl;
import com.cakeandcupcakes.model.BillingAddress;

@Service
@Transactional
public class BillingAddressService {

	@Autowired(required=true)	
	BillingAddressDAOImpl billingAddressDAO;
	public List<BillingAddress> list(){
		return billingAddressDAO.list();
	}
	public void saveOrUpdate(BillingAddress billingAddress){
		billingAddressDAO.saveOrUpdate(billingAddress);
	}
	public void delete(Integer BillingAddressId) {
		billingAddressDAO.deleteBillingAddress(BillingAddressId);
		
	}
	public BillingAddress get(Integer BillingAddressId){
		return billingAddressDAO.getBillingAddress(BillingAddressId);
	}
}
