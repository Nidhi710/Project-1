package com.cakeandcupcakes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakeandcupcakes.dao.CategoryDAOImpl;
import com.cakeandcupcakes.model.Category;
@Service
@Transactional
public class CategoryService {
	@Autowired(required=true)
	CategoryDAOImpl categoryDAO;
	public List<Category> list(){
		return categoryDAO.list();
	}
	public void saveOrUpdate(Category category){
		categoryDAO.saveOrUpdate(category);
	}
	public void delete(Integer id) {
		categoryDAO.delete(id);
		
	}
	public Category get(Integer id){
		return categoryDAO.get(id);
	}
	public Category getByName(String name){
		return categoryDAO.getByName(name);
	}
}
