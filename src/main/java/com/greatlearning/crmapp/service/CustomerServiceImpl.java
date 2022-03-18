package com.greatlearning.crmapp.service;

import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.greatlearning.crmapp.dao.CustomerDao;
import com.greatlearning.crmapp.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	private CustomerDao customerDao;

	public CustomerServiceImpl(CustomerDao customerDao) {
		this.customerDao = customerDao;

	}

	@Override
	@Transactional
	public List<Customer> findAll() {

		return customerDao.findAll();
	}

	@Override
	@Transactional
	public Customer findById(int id) {
		return customerDao.findById(id);
	}

	@Override
	@Transactional
	public void save(Customer customer) {

		customerDao.save(customer);
	}

	@Override
	@Transactional
	public void deleteById(int id) {
		customerDao.deleteById(id);
	}

}
