package com.springWebApp.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Customer {
	
	@NotEmpty(message="is required")
	@NotNull(message="is required")
	private String firstName;
	
	@NotEmpty
    @Size(min = 6, max = 15, message = "Your lastName must between 6 and 15 characters")
	private String lastName;
	
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	 public Customer() {
		 
	 }
	public Customer( String firstName,  String lastName) {
		this.firstName = firstName;
		this.lastName = lastName;
	}
	
}
