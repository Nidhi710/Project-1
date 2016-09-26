package com.cakeandcupcakes.dao;

import java.util.List;

import com.cakeandcupcakes.model.BillingAddress;

public interface BillingAddressDAO {
 
	void saveOrUpdate(BillingAddress billingAddress);

	void deleteBillingAddress(Integer billingAddressId);

	BillingAddress getBillingAddress(Integer billingAddressId);
	public List<BillingAddress> list();
}
