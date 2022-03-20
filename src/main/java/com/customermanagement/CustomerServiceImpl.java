package com.customermanagement;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerServiceImpl implements CustomerService {

	private SessionFactory sessionFactory;

	private Session session;

	@Autowired
	CustomerServiceImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		try {
			session = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = sessionFactory.openSession();

		}
	}

	@Transactional
	public void save(Customer theCus) {
		// TODO Auto-generated method stub

		Transaction txn = session.beginTransaction();

		session.saveOrUpdate(theCus);

		txn.commit();

	}

	@Transactional
	public Customer findById(int cusId) {

		Customer customer = new Customer();

		Transaction tx = session.beginTransaction();

		// find record with Id from the database table
		customer = session.get(Customer.class, cusId);

		tx.commit();

		return customer;
	}

	@Transactional
	public List<Customer> findAll() {
		Transaction tx = session.beginTransaction();

		// find all the records from the database table
		List<Customer> customer=session.createQuery("from Customer").list();

		tx.commit();

		return customer;
	}

	@Override
	public void deleteById(int cusId) {
		// TODO Auto-generated method stub
		
		Transaction txn = session.beginTransaction();
		
		Customer customer = session.get(Customer.class, cusId);
		
		session.delete(customer);
		
		txn.commit();
		
	}

}
