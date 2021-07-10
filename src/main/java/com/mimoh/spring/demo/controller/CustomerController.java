package com.mimoh.spring.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mimoh.spring.demo.entity.Customer;
import com.mimoh.spring.demo.service.CustomerService;

@Controller
@RequestMapping("/")
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/")
	public String getCustomers(Model model){
		List<Customer> customers = customerService.getCustomers();
		if (customers == null) {
			return "error";
		}
		model.addAttribute("customers", customers);
		
		return "index";
	}
	
	@GetMapping("/view/{customerId}")
	public String getCustomer(@PathVariable int customerId, Model model) {
		
		Customer customer = customerService.getCustomer(customerId);
		
		if (customer == null) {
			return "error";
		}
		model.addAttribute("customer",customer);
		
		return "customer";
	}
	
	@GetMapping("/add")
	public String addCustomer(Model model) {
		model.addAttribute("customer", new Customer());
		return "add";
	}
	
	@PostMapping("/add")
	public String addCustomer(@ModelAttribute("customer") Customer customer, RedirectAttributes attributes) {
		
		customerService.saveCustomer(customer);
		attributes.addFlashAttribute("add", true);
		return "redirect:/";
	}
	
	@GetMapping("/update/{customerId}")
	public String updateCustomer(@PathVariable int customerId, Model model) {
		Customer customer = customerService.getCustomer(customerId);
		if(customer == null) {
			return "error";
		}
		model.addAttribute("customer", customer);
		return "update";
	}
	
	@PostMapping("/update")
	public String updateCustomer(@ModelAttribute("customer") Customer customer, RedirectAttributes attributes) {
		Customer theCustomer = customerService.getCustomer(customer.getId());

//		System.out.println(customer);
		if(theCustomer == null) {
			return "error";
		}
		
		customerService.saveCustomer(customer);

		attributes.addFlashAttribute("update", true);
		
		return "redirect:/";
	}
	
	@GetMapping("/delete/{customerId}")
	public String deleteCustomer(@PathVariable int customerId, RedirectAttributes attributes) {
		Customer customer = customerService.getCustomer(customerId);
		
		if(customer == null) {
			return "error";
		}
		
		customerService.deleteCustomer(customerId);
		attributes.addFlashAttribute("delete", true);
		return "redirect:/";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
