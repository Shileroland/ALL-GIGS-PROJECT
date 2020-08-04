package com.tm30.allgigsproject.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

@Entity
@Table(name = "EMPLOYEE_BASIC_DATA")
public class GigsModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int employeeId;
	@Column(name = "FIRSTNAME")
	private String firstname;
	@Column(name = "LASTNAME")
	private String lastname;
	@Column(name = "EMAIL")
	private String email;
	@Column(name = "ROLE")
	private String role;
	@Column(name = "COMPANY")
	private String company;	
	@Column(name = "COUNTRY")
	private String country;
	@Column(name = "STATE")
	private String state;
	@Column(name = "ADDRESS")
	private String address;
	@Column(name = "MINI_SALARY")
	private int minimum;
	@Column(name = "MAXI_SALARY")
	private int maximum;
	
//	@Generated(GenerationTime.INSERT)
//	@Column(name = "CREATED_DATE")
	private String createdDate;


	
	public GigsModel(int employeeId, String firstname, String lastname, String email, String role, String company,
			String country, String state, String address, int minimum, int maximum, String createdDate) {
		super();
		this.employeeId = employeeId;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.role = role;
		this.company = company;
		this.country = country;
		this.state = state;
		this.address = address;
		this.minimum = minimum;
		this.maximum = maximum;
		this.createdDate = createdDate;
	}

	public GigsModel() {
		
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getMinimum() {
		return minimum;
	}

	public void setMinimum(int minimum) {
		this.minimum = minimum;
	}

	public int getMaximum() {
		return maximum;
	}

	public void setMaximum(int maximum) {
		this.maximum = maximum;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
}
