package com.cakeandcupcakes.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class CartItem implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private Integer cartItemId;
private Integer cartid;
private Integer id;
private String productName;
private Integer productPrice;
private Integer quantity;
private double total;

@ManyToOne
@JoinColumn(name="cartid",insertable=false,updatable=false,nullable=false)
Cart cart;
@ManyToOne
@JoinColumn(name="id",insertable=false,updatable=false,nullable=false)
Product product;


public Integer getCartItemId() {
	return cartItemId;
}


public void setCartItemId(Integer cartItemId) {
	this.cartItemId = cartItemId;
}






public Integer getCartid() {
	return cartid;
}


public void setCartid(Integer cartid) {
	this.cartid = cartid;
}


public static long getSerialversionuid() {
	return serialVersionUID;
}





public Integer getId() {
	return id;
}


public void setId(Integer id) {
	this.id = id;
}


public String getProductName() {
	return productName;
}


public void setProductName(String productName) {
	this.productName = productName;
}


public Integer getProductPrice() {
	return productPrice;
}


public void setProductPrice(Integer productPrice) {
	this.productPrice = productPrice;
}


public Integer getQuantity() {
	return quantity;
}


public void setQuantity(Integer quantity) {
	this.quantity = quantity;
}


public double getTotal() {
	return total;
}


public void setTotal(double total) {
	this.total = total;
}


public Cart getCart() {
	return cart;
}


public void setCart(Cart cart) {
	this.cart = cart;
}


public Product getProduct() {
	return product;
}


public void setProduct(Product product) {
	this.product = product;
}


public String toString(){
	return"{cartItemId : '" +cartItemId + "'," + "cartid : '" + cartid + "'," + "id :'" + id + "'," + "productName : '" + productName + "'," + "productPrice : '" +productPrice + "'," + "quantity : '" +quantity + "'," + "total : '" +total + "'}";
}

}
