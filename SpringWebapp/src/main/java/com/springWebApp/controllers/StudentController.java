package com.springWebApp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springWebApp.model.Student;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@RequestMapping("/showForm")
	public String showForm(Model theModel) {
		
		Student theStudent = new Student();
		
		theModel.addAttribute("student",theStudent);
		
		
		return "student-form";
	} 
	
	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("student") Student theStudent) {
		
		System.out.println(theStudent.getFirstName()+" "+theStudent.getLastName());
		System.out.println("Country: "+theStudent.getCountry());
		System.out.println("Favourite Language: "+theStudent.getFavouriteLanguage());


		
		return"Student-Confirmation";
	}

}
