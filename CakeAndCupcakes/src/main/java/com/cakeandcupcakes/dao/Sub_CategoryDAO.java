package com.cakeandcupcakes.dao;

import java.util.List;
import com.cakeandcupcakes.model.Sub_Category;

public interface Sub_CategoryDAO {
	public void saveOrUpdate(Sub_Category sub_category);
	public void delete (String id);
	public Sub_Category get(String id);
	public Sub_Category getByName(String name);
	public List<Sub_Category> list();

}
