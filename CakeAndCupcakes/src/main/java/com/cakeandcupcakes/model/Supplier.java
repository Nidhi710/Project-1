package com.cakeandcupcakes.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;




@Entity

public class Supplier {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	private String name;/*@NotEmpty(message= "Enter Supplier Name") */
			
	private String address;/*@NotEmpty(message= "Enter Supplier Address")*/
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
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
