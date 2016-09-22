package com.cakeandcupcakes.model;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.validator.constraints.NotEmpty;



@Entity

public class Sub_Category {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	private Integer cat_id;
	@NotEmpty(message="Sub_Category Name is compulsory")
	private String name;
	@NotEmpty(message="Sub_Category Description is compulsory")
	private String desc;
	@ElementCollection
	@ManyToOne
	@JoinColumn(name="cat_id",insertable=false,updatable=false,nullable=false)
	Category category;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCat_id() {
		return cat_id;
	}

	public void setCat_id(Integer cat_id) {
		this.cat_id = cat_id;
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

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	public String toString()
	{
		
		return "{id : '" + id + "', "+"cat_id :'" + cat_id + "'," + "name : '" + name + "'," + "desc :'" + desc + "'}";
	}
	
}
