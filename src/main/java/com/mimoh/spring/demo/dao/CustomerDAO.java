package com.mimoh.spring.demo.dao;

import java.util.List;

import com.mimoh.spring.demo.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers();
	
	public void saveCustomer(Customer customer);
	
	public Customer getCustomer(int theId);
	
	public void deleteCustomer(int theId);
	
}
