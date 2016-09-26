package com.cakeandcupcakes.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.cakeandcupcakes.dao.CartDetailDAOImpl;
import com.cakeandcupcakes.model.CartDetail;

@Service
@Transactional
public class CartDetailService {
	@Autowired(required=true)	
	CartDetailDAOImpl cartDetailDAO;
	
	public void saveOrUpdate(CartDetail cartDetail){
		cartDetailDAO.saveOrUpdate(cartDetail);
	}
}
