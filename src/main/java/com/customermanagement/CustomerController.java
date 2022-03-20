package com.customermanagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller

@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping("/list")
	public String list(Model theModel) {
		
		// get Books from db
		List<Customer> theCustomer = customerService.findAll();

		// add to the spring model
		theModel.addAttribute("Customer", theCustomer);

		return "list-Customer";
	}

	@RequestMapping("/showForm")
	public String showForm(Model theModel) {
		Customer theCus = new Customer();
		theCus.setCusId(0);
		theModel.addAttribute("Customer",theCus);
		return "add-Customer";
	}

	@PostMapping("/save")
	public String save(@RequestParam("cusId") int cusId,
			@RequestParam("firstName") String firstName,@RequestParam("lastName") String lastName,@RequestParam("email") String email) {

		
		System.out.println(cusId);
		Customer theCus;
		if(cusId!=0) {
			theCus = customerService.findById(cusId);
			theCus.setFirstName(firstName);
			theCus.setLastName(lastName);
			theCus.setEmail(email);
		}else
			theCus = new Customer(firstName,lastName,email);
			
		customerService.save(theCus);

		// use a redirect to prevent duplicate submissions
		return "redirect:/customer/list";

	}
	
	@RequestMapping("/updateForm")
	public String updateForm(@RequestParam("cusId") int cusId,
			Model theModel) {

		Customer theCus = customerService.findById(cusId);
		System.out.println(theCus);
		theModel.addAttribute("Customer",theCus);
		return "add-Customer";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("cusId") int cusId) {
		customerService.deleteById(cusId);
		return "redirect:/customer/list";
	}
	
}
