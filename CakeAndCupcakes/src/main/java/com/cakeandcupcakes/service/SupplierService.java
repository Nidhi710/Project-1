package com.cakeandcupcakes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakeandcupcakes.dao.SupplierDAOImpl;
import com.cakeandcupcakes.model.Supplier;

@Service
@Transactional
public class SupplierService {
	@Autowired
	SupplierDAOImpl supplierDAO;
		public List<Supplier> list(){
			return supplierDAO.list();
		}
		public void saveOrUpdate(Supplier supplier){
			supplierDAO.saveOrUpdate(supplier);
		}
			
		public void delete(Integer id) {
			supplierDAO.delete(id);
			
		}
		public Supplier get(Integer id){
			return supplierDAO.get(id);
		}
		public Supplier getByName(String name){
			return supplierDAO.getByName(name);
		}
	
	}
