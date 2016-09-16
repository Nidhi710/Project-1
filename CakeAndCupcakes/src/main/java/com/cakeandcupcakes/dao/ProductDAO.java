package com.cakeandcupcakes.dao;

import java.util.List;

import com.cakeandcupcakes.model.Product;

public interface ProductDAO {
	public void saveOrUpdate(Product product);
	public void delete (Integer id);
	public Product get(Integer id);
	public Product getView(Integer id);
	public Product getSubcat_id(Integer id);
    public Product getByName(String name);
	public List<Product> list();

}
