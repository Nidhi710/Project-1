package com.cakeandcupcakes.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import org.springframework.stereotype.Component;

@Entity
@Component
public class OrderedDetail implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer orderDetailId;
	
	private Integer userId;
	private double grandTotal;
	private Integer shippingAddressId;
	private Integer billingAddressId;
	public Integer getOrderDetailId() {
		return orderDetailId;
	}
	public void setOrderDetailId(Integer orderDetailId) {
		this.orderDetailId = orderDetailId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public double getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}
	public Integer getShippingAddressId() {
		return shippingAddressId;
	}
	public void setShippingAddressId(Integer shippingAddressId) {
		this.shippingAddressId = shippingAddressId;
	}
	public Integer getBillingAddressId() {
		return billingAddressId;
	}
	public void setBillingAddressId(Integer billingAddressId) {
		this.billingAddressId = billingAddressId;
	}
	
	
}