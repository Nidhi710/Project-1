package com.cakeandcupcakes.demohandler;

import org.springframework.stereotype.Component;

import com.cakeandcupcakes.model.User;

@Component
public class Demohandler {
	public User initFlow(){
		return new User();
	}
}
