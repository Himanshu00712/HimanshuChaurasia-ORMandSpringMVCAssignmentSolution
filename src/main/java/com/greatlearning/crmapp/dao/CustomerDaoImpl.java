package com.greatlearning.crmapp.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import com.greatlearning.crmapp.entity.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	private SessionFactory sessionFactory;
	private Session session;

	public CustomerDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		this.session = this.sessionFactory.openSession();
	}

	public List<Customer> findAll() {

		Transaction tx = session.beginTransaction();
		List<Customer> customers = session.createQuery("from Customer", Customer.class).list();
		tx.commit();

		return customers;
	}

	public Customer findById(int id) {
		Transaction tx = session.beginTransaction();
		Customer customer = session.get(Customer.class, id);
		tx.commit();
		return customer;
	}

	public void save(Customer customer) {
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(customer);
		tx.commit();
	}

	public void deleteById(int id) {
		Transaction tx = session.beginTransaction();
		try {
			Customer customer = session.get(Customer.class, id);
			session.delete(customer);
		} finally {
			tx.commit();
		}

	}

}
