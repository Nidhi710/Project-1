package com.cakeandcupcakes.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
@Entity
public class Cart implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer cartid;
	private Integer userId;
	private double grandTotal;
	private int noOfProducts;
	@ElementCollection
	/*@OneToMany(mappedBy ="cart",fetch =FetchType.EAGER)
    private  Set<CartItem> cartItem;*/
	@OneToOne(mappedBy="cart",cascade=CascadeType.ALL)
	@JoinColumn(name="userId",insertable=false,updatable=false,nullable=false)
	private User user;
	
	
	/*public Set<CartItem> getCartItem() {
		return cartItem;
	}
	public void setCartIteam(Set<CartItem> cartItem) {
		this.cartItem = cartItem;
	}*/
	public Integer getCartid() {
		return cartid;
	}
	public void setCartid(Integer cartid) {
		this.cartid = cartid;
	}
	
	
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public double getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}
	public int getNoOfProducts() {
		return noOfProducts;
	}
	public void setNoOfProducts(int noOfProducts) {
		this.noOfProducts = noOfProducts;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
