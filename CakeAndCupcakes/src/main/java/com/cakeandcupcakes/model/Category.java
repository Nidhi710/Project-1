package com.cakeandcupcakes.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotEmpty;




@Entity

public class Category implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	@NotEmpty(message="Category Name is compulsory")
	private String name;
	@NotEmpty(message="Category Description is compulsory")
	private String desc;
	@ElementCollection
	@OneToMany(mappedBy ="category",fetch =FetchType.EAGER)
	private  Set<Sub_Category> sub_category;
	
	public Integer getId() {
		return id;
	}
	public void setId( Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	public Set<Sub_Category> getSub_category() {
		return sub_category;
	}
	public void setSub_category(Set<Sub_Category> sub_category) {
		this.sub_category = sub_category;
	}
	public String toString()
	{
		
		return "{id : '" + id + "'," + "name : '" + name + "'," + "desc :'" + desc + "'}";
	}

	
	

}
