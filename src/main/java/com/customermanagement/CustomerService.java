package com.customermanagement;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CustomerService {

	public void save(Customer theCus);

	public Customer findById(int cusId);

	public List<Customer> findAll();
	
	public void deleteById(int cusId);
}
