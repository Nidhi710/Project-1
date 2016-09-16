package com.cakeandcupcakes.dao;

import java.util.List;

import com.cakeandcupcakes.model.Category;

public interface CategoryDAO {
	public void saveOrUpdate(Category category);
	public void delete ( Integer id);
	public Category get( Integer id);
    public Category getByName(String name);
	public List<Category> list();

}
