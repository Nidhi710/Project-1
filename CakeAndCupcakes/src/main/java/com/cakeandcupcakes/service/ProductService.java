package com.cakeandcupcakes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakeandcupcakes.dao.ProductDAOImpl;
import com.cakeandcupcakes.model.Product;
@Service
@Transactional
public class ProductService {
	@Autowired(required=true)
	ProductDAOImpl productDAO;
	public List<Product> list(){
		return productDAO.list();
	}
	public void saveOrUpdate(Product product){
		productDAO.saveOrUpdate(product);
	}
	public void delete(Integer id) {
		productDAO.delete(id);
		
	}
	public Product get(Integer id){
		return productDAO.get(id);
	}
	public Product getView(Integer id){
		return productDAO.getView(id);
	}
	public Product getSubcat_id(Integer id){
		return productDAO.getSubcat_id(id);
	}
	public Product getByName(String name){
		return productDAO.getByName(name);
	}
}
