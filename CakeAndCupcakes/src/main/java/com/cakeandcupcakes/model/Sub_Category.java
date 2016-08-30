package com.cakeandcupcakes.model;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;



@Entity

public class Sub_Category {
	@Id
	private String id;
	private String cat_id;	
	private String name;
	private String desc;
	@ElementCollection
	@ManyToOne
	@JoinColumn(name="cat_id",insertable=false,updatable=false,nullable=false)
	Category category;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCat_id() {
		return cat_id;
	}

	public void setCat_id(String cat_id) {
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
		
		return "{cat_id :'"+cat_id+"',id : '" + id + "'," + "name : '" + name + "'," + "desc :'" + desc + "'}";
	}
	
}
