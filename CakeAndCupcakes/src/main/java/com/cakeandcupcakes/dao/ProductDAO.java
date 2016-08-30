package com.cakeandcupcakes.dao;

import java.util.List;

import com.cakeandcupcakes.model.Product;

public interface ProductDAO {
	public void saveOrUpdate(Product product);
	public void delete (String id);
	public Product get(String id);
	public Product getView(String id);
	public Product getSubcat_id(String id);
    public Product getByName(String name);
	public List<Product> list();

}
