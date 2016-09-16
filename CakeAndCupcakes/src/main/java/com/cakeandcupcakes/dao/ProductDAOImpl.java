package com.cakeandcupcakes.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cakeandcupcakes.model.Product;
@Repository
public class ProductDAOImpl implements ProductDAO {
	public ProductDAOImpl() {

	}
	@Autowired
	private SessionFactory sessionFactory;


	public ProductDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public List<Product> list() {
		
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listProduct;
	}
	public void saveOrUpdate(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}
	public void delete(Integer id) {
		Product ProductToDelete = new Product();
		ProductToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(ProductToDelete);
	}


	
	public Product get(Integer id) {
		
		String hql = "from Product where id=" + "'"+ id +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();
		
		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		
		return null;
	}
	
        public Product getView(Integer id) {
		
		String hql = "from Product where id=" + "'"+ id +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();
		
		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		
		return null;
	}
	
        public Product getSubcat_id(Integer id) {
    		
    		String hql = "from Product where id=" + "'"+ id +"'";
    		Query query = sessionFactory.getCurrentSession().createQuery(hql);
    		
    		@SuppressWarnings("unchecked")
    		List<Product> listProduct = (List<Product>) query.list();
    		
    		if (listProduct != null && !listProduct.isEmpty()) {
    			return listProduct.get(0);
    		}
    		
    		return null;
    	}
        
	 public Product getByName(String name){

			String hql = "from Product where name=" + "'"+ name +"'";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			
			@SuppressWarnings("unchecked")
			List<Product> listProduct = (List<Product>) query.list();
			
			if (listProduct != null && !listProduct.isEmpty()) {
				return listProduct.get(0);
	 }
			return null;

	 }
}