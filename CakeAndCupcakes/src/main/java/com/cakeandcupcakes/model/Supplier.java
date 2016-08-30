package com.cakeandcupcakes.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import org.hibernate.validator.constraints.NotEmpty;



@Entity

public class Supplier {
	@Id
	private String id;
	private String name;@NotEmpty(message= "Enter Supplier Name") 
			
	private String address;@NotEmpty(message= "Enter Supplier Address")
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String toString()
	{
		
		return "{id : '" + id + "'," + "name : '" + name + "'," + "address :'" + address + "'}";
	}


}
