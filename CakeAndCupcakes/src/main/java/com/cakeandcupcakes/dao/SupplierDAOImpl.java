package com.cakeandcupcakes.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.cakeandcupcakes.model.Supplier;


@Repository
public class SupplierDAOImpl implements SupplierDAO {
	public SupplierDAOImpl() {

	}
	@Autowired(required=true)
	private SessionFactory sessionFactory;


	public SupplierDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public List<Supplier> list() {
		
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listSupplier;
	}
	public void saveOrUpdate(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}

	public void delete(Integer id) {
		Supplier SupplierToDelete = new Supplier();
		SupplierToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(SupplierToDelete);
	}


	
	public Supplier get(Integer id) {
		
		String hql = "from Supplier where id=" + "'"+ id +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) query.list();
		
		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}
		
		return null;
	}
public Supplier getByName(String name) {
		
		String hql = "from Supplier where name=" + "'"+ name +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) query.list();
		
		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}
		
		return null;
	}

}
