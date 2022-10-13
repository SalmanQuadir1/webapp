package com.springWebApp.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springWebApp.model.Customer;


@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@RequestMapping("/showForm")
	public String showForm(Model model) {
		
		
		model.addAttribute("customer", new Customer());
		
		
		return "customer-form";
	} 
	
	@RequestMapping("/processForm")
	public String processForm( @Valid @ModelAttribute("customer") Customer customer, BindingResult result) {
		System.out.println(customer.getFirstName()+" "+customer.getLastName());
		if(result.hasErrors()) {
			
			return "customer-form";
			
		}else {
			
			return "customer-confirmation";
		}
	}

}
