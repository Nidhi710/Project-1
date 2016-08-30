package com.cakeandcupcakes.model;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;



@Entity
public class Product {
	@Id
	private String id;
	private String name;
	private String desc;
	private String qty;
	private int price;
	private String subcat_id;
	private String sup_id;
	@Transient
	private MultipartFile img;
	
	@ElementCollection
	@ManyToOne
	@JoinColumn(name="subcat_id",insertable=false,updatable=false,nullable=false)
	Sub_Category sub_category;
	
	@ElementCollection
	@ManyToOne
	@JoinColumn(name="sup_id",insertable=false,updatable=false,nullable=false)
	Supplier supplier;
	
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

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getQty() {
		return qty;
	}

	public void setQty(String qty) {
		this.qty = qty;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getSubcat_id() {
		return subcat_id;
	}

	public void setSubcat_id(String subcat_id) {
		this.subcat_id = subcat_id;
	}

	public String getSup_id() {
		return sup_id;
	}

	public void setSup_id(String sup_id) {
		this.sup_id = sup_id;
	}
    
	public MultipartFile getImg() {
		return img;
	}

	public void setImg(MultipartFile img) {
		this.img = img;
	}

	public Sub_Category getSub_category() {
		return sub_category;
	}

	public void setSub_category(Sub_Category sub_category) {
		this.sub_category = sub_category;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public String toString()
	{
		return "{subcat_id :'"+subcat_id+"',"+"id : '" + id + "'," + "name : '" + name + "'," + "desc :'" + desc + "',"+"qty : '" + qty + "',"+"price : '" + price + "',"+"sup_id :'"+sup_id+"',"+"img :'resources/images/"+id+".jpg'}";
		/*return "{subcat_id :'"+subcat_id+"',"+"id : '" + id + "'," + "name : '" + name + "'," + "desc :'" + desc + "',qty : '" + qty + "',price : '" + price + "',sup_id :'"+sup_id+"'}";*/
	}
	 
	
}