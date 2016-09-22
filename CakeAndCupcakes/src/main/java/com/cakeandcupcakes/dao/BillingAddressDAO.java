package com.cakeandcupcakes.dao;

import com.cakeandcupcakes.model.BillingAddress;

public interface BillingAddressDAO {
 
	void saveOrUpdate(BillingAddress billingAddress);

	void deleteBillingAddress(Integer billingAddressId);

	BillingAddress getBillingAddress(Integer billingAddressId);

}
