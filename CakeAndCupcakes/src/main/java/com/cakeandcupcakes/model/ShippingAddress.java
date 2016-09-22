package com.cakeandcupcakes.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotBlank;
@Entity
public class ShippingAddress {
	@Id
	private Integer shippingAddressId;
	private Integer userId;
	@NotBlank(message="Specify main address")
	private String line1;	
	private String line2;
	
	@NotBlank(message="Specify city")
	private String city;
	@NotBlank(message="Specify state")
	private String state;
	@NotBlank(message="Specify country")
	private String country;
	@NotBlank(message="Specify zipcode")
	private String zipCode;
	public Integer getShippingAddressId() {
		return shippingAddressId;
	}
	public void setShippingAddressId(Integer shippingAddressId) {
		this.shippingAddressId = shippingAddressId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getLine1() {
		return line1;
	}
	public void setLine1(String line1) {
		this.line1 = line1;
	}
	public String getLine2() {
		return line2;
	}
	public void setLine2(String line2) {
		this.line2 = line2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
  
	
}
