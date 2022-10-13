package com.springWebApp.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/forms")
public class HelloworldController {
	
	@RequestMapping("/showForm")
	public String showForm() {
		return "Helloworld-form";
	}

	
	  @RequestMapping("/processForm")
	  public String processForm() {
		  return"Helloworld";
	  }
	 
	@RequestMapping("/processFormVersionTwo")
	public String processFormTwo( HttpServletRequest request,Model model) {
		String theName = request.getParameter("studentName");  
		theName = theName.toUpperCase();
		String result = theName;
		model.addAttribute("message",result);
		return "Helloworld";
	}
	@RequestMapping("/processFormVersionThree")
	public String processFormVersionThree( @RequestParam("studentName") String theName, @RequestParam("message") String message, Model model) {
		theName = theName.toUpperCase();
		String result = theName;
		model.addAttribute("message",result);
		model.addAttribute("msg",message);
		return "Helloworld";
	}
	
}
