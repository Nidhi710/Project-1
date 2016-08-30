package com.cakeandcupcakes.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakeandcupcakes.dao.UserDAOImpl;
import com.cakeandcupcakes.model.User;

@Service
@Transactional
public class UserService {
   @Autowired
   UserDAOImpl userDAO;
   public void saveOrUpdate(User user){
	   userDAO.saveOrUpdate(user);
   }
}
