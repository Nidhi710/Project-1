package com.cakeandcupcakes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.cakeandcupcakes.model.CartItem;
import com.cakeandcupcakes.service.CartItemService;
import com.cakeandcupcakes.service.CartService;
import com.cakeandcupcakes.service.ProductService;
import com.cakeandcupcakes.service.UserService;

@Controller
public class CartItemController {

	
	@Autowired(required=true)
	private CartItemService cartItemService;
	@Autowired(required=true)
	private UserService userService;
	@Autowired(required=true)
	private CartService cartService;
	@Autowired(required=true)
	private ProductService productService;
	
	@RequestMapping(value = "/cartItems",method = RequestMethod.GET)
	public String cartItem(Model model) {
		model.addAttribute("cartItem", new CartItem());
		model.addAttribute("cartItemList", this.cartItemService.list());
				return "cartItem";
				}
	
	@RequestMapping(value="/cartItem/add" )
	public  String addToCartItem(@ModelAttribute CartItem cartItem,@RequestParam("id")Integer id, Integer total){
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		String username =authentication.getName();
		
		int user=userService.getByName(username).getUserId();
		int cartId=cartService.getById(user).getCartid();
		int price=productService.get(id).getPrice();
		cartItem.setCartId(cartId);
		cartItem.setProductName(productService.get(id).getName());
		cartItem.setProductPrice(productService.get(id).getPrice());
		cartItem.setProductId(id);
		cartItem.setProductQty(1);
		cartItem.setTotal(price*cartItem.getProductQty());
		
		cartItemService.saveOrUpdate(cartItem);
		return "redirect:/cartItems";
		}
		
	}

