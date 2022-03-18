package com.greatlearning.crmapp.dao;

import java.util.List;
import com.greatlearning.crmapp.entity.Customer;


public interface CustomerDao {

	public List<Customer> findAll();		
	public Customer findById(int id);
	public void save(Customer customer); // save or update
	public void deleteById(int id);
}

