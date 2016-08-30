package com.cakeandcupcakes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.cakeandcupcakes.dao.Sub_CategoryDAOImpl;
import com.cakeandcupcakes.model.Sub_Category;

@Service
@Transactional
public class Sub_CategoryService {
	@Autowired	
	Sub_CategoryDAOImpl sub_categoryDAO;
	public List<Sub_Category> list(){
		return sub_categoryDAO.list();
	}
	public void saveOrUpdate(Sub_Category sub_category){
		sub_categoryDAO.saveOrUpdate(sub_category);
	}
	public void delete(String id) {
		sub_categoryDAO.delete(id);
		
	}
	public Sub_Category get(String id){
		return sub_categoryDAO.get(id);
	}
	public Sub_Category getByName(String name){
		return sub_categoryDAO.getByName(name);
	}
}