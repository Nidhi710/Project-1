package com.cakeandcupcakes.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class CartItem {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private Integer cartItemId;
private Integer cartId;
private Integer productId;
private String productName;
private Integer productPrice;
private Integer productQty;
private Integer total;

@ManyToOne
@JoinColumn(name="cartId",insertable=false,updatable=false,nullable=false)
Cart cart;
@ManyToOne
@JoinColumn(name="productId",insertable=false,updatable=false,nullable=false)
Product product;

public Integer getCartItemId() {
	return cartItemId;
}
public void setCartItemId(Integer cartItemId) {
	this.cartItemId = cartItemId;
}
public Integer getCartId() {
	return cartId;
}
public void setCartId(Integer cartId) {
	this.cartId = cartId;
}
public Integer getProductId() {
	return productId;
}
public void setProductId(Integer productId) {
	this.productId = productId;
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
public Integer getProductQty() {
	return productQty;
}
public void setProductQty(Integer productQty) {
	this.productQty = productQty;
}
public Integer getTotal() {
	return total;
}
public void setTotal(Integer total) {
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
	return"{cartItemId : '" +cartItemId + "'," + "cartId : '" + cartId + "'," + "productId :'" + productId + "'," + "productName : '" + productName + "'," + "productPrice : '" +productPrice + "'," + "productQty : '" +productQty + "'," + "total : '" +total + "'}";
}

}
