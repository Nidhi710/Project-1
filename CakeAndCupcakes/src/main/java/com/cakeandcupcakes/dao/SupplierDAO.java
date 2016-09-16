package com.cakeandcupcakes.dao;

import java.util.List;


import com.cakeandcupcakes.model.Supplier;



public interface SupplierDAO {
	public void saveOrUpdate(Supplier supplier);
	public void delete (Integer id);
	public Supplier get(Integer id);
	public Supplier getByName(String name);
	public List<Supplier> list();
}
