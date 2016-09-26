package com.cakeandcupcakes.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakeandcupcakes.dao.UserDAOImpl;

import com.cakeandcupcakes.model.User;

@Service
@Transactional
public class UserService {
   @Autowired(required=true)
   UserDAOImpl userDAO;
   public List<User> list(){
		return userDAO.list();
	}
   public void saveOrUpdate(User user){
	   userDAO.saveOrUpdate(user);
   }
   public User getById(Integer id){
		return userDAO.getById(id);
	}
   public User getByName(String username){
	   return userDAO.getByName(username);
   }
   
   public int getUserId(String username) {
	   return userDAO.getByName(username).getUserId();
   }
 
}
