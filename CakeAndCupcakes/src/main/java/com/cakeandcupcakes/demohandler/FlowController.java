package com.cakeandcupcakes.demohandler;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.cakeandcupcakes.model.BillingAddress;
import com.cakeandcupcakes.model.Cart;
import com.cakeandcupcakes.model.CartDetail;
import com.cakeandcupcakes.model.CartItem;
import com.cakeandcupcakes.model.CheckoutDetails;
import com.cakeandcupcakes.model.OrderedDetail;
import com.cakeandcupcakes.model.OrderedItems;
import com.cakeandcupcakes.model.Product;
import com.cakeandcupcakes.model.ShippingAddress;
import com.cakeandcupcakes.model.User;
import com.cakeandcupcakes.service.BillingAddressService;
import com.cakeandcupcakes.service.CartDetailService;
import com.cakeandcupcakes.service.CartItemService;
import com.cakeandcupcakes.service.CartService;
import com.cakeandcupcakes.service.OrderedDetailService;
import com.cakeandcupcakes.service.OrderedItemsService;
import com.cakeandcupcakes.service.ProductService;
import com.cakeandcupcakes.service.ShippingAddressService;
import com.cakeandcupcakes.service.UserService;

@Component
public class FlowController {

	@Autowired(required=true)
	private ProductService productService;
	@Autowired(required=true)
	private ShippingAddress shippingAddress;

	@Autowired(required=true)
	private BillingAddress billingAddress;

	@Autowired(required=true)
	private OrderedDetail orderedDetail;

	@Autowired(required=true)
	private OrderedItems orderedItems;

	@Autowired(required=true)
	private CartDetail cartDetail;

	@Autowired(required=true)
	private ShippingAddressService shippingAddressService;

	@Autowired(required=true)
	private BillingAddressService billingAddressService;

	@Autowired(required=true)
	private OrderedItemsService orderedItemsService;

	@Autowired
	private OrderedDetailService orderedDetailService;

	@Autowired(required=true)
	private CartDetailService cartDetailService;
	@Autowired(required=true)
	User user;
	@Autowired(required=true)
	UserService userService;

	@Autowired(required=true)
	CartService cartService;

	@Autowired(required=true)
	Cart cart;

	@Autowired(required=true)
	CartItemService cartItemService;
	@Autowired(required=true)
	HttpSession httpSession;
	@Autowired(required=true)
	Product product;
	CheckoutDetails checkoutDetails = new CheckoutDetails();

	public CheckoutDetails initFlow() {
		user = userService.getByName(SecurityContextHolder.getContext()
				.getAuthentication().getName());
		checkoutDetails.setCart(cartService.getById(user.getUserId()));
		checkoutDetails.setUser(userService.getByName(user.getUsername()));
		return checkoutDetails;
	}

	public String addShippingAddress(CheckoutDetails checkoutDetails, ShippingAddress shippingAddress) {
		user = userService.getByName(SecurityContextHolder.getContext()
				.getAuthentication().getName());

		shippingAddress.setUserId(user.getUserId());
		checkoutDetails.setShippingAddress(shippingAddress);

		this.shippingAddress.setUserId(user.getUserId());
		this.shippingAddress.setLine1(shippingAddress.getLine1());
		this.shippingAddress.setLine2(shippingAddress.getLine2());
		this.shippingAddress.setCity(shippingAddress.getCity());
		this.shippingAddress.setState(shippingAddress.getState());
		this.shippingAddress.setCountry(shippingAddress.getCountry());
		this.shippingAddress.setZipCode(shippingAddress.getZipCode());

		return "success";
	}

	public String addBillingAddress(CheckoutDetails checkoutDetails, BillingAddress billingAddress) {
		user = userService.getByName(SecurityContextHolder.getContext().getAuthentication().getName());
		billingAddress.setUserId(user.getUserId());
		checkoutDetails.setBillingAddress(billingAddress);

		this.billingAddress.setUserId(user.getUserId());
		this.billingAddress.setLine1(billingAddress.getLine1());
		this.billingAddress.setLine2(billingAddress.getLine2());
		this.billingAddress.setCity(billingAddress.getCity());
		this.billingAddress.setState(billingAddress.getState());
		this.billingAddress.setCountry(billingAddress.getCountry());
		this.billingAddress.setZipCode(billingAddress.getZipCode());

		return "success";
	}

	public String addCartDetail(CheckoutDetails checkoutDetails, CartDetail cartDetail) {
		user = userService.getByName(SecurityContextHolder.getContext().getAuthentication().getName());

		cartDetail.setUserId(user.getUserId());
		cartDetail.setTotalCost(cartService.getById(user.getUserId()).getGrandTotal());
		cartDetailService.saveOrUpdate(cartDetail);
		/*cartDetailService.saveOrUpdate(cartDetail);*/

		List<CartItem> listOfCartItems = cartItemService.getlist(user.getCartid());

		listOfCartItems = cartItemService.getlist(user.getUserId());

		cart = cartService.getById(user.getUserId());

		cart.setCartid(cart.getCartid());
		//cart.setUserId(cart.getCartid());
		cart.setNoOfProducts(listOfCartItems.size());

		shippingAddressService.saveOrUpdate(checkoutDetails.getShippingAddress());
		billingAddressService.saveOrUpdate(checkoutDetails.getBillingAddress());
		cartService.saveOrUpdate(cart);

		httpSession.setAttribute("noOfProducts", cart.getNoOfProducts());

		return "success";
	}

}
