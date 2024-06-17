package com.sunbeam.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.Columns;

@Entity
public class Products {
	
//	products table - id , category (BAKERY|SHOES|CLOTHES|STATIONAY) ,product name(unique)  , price , available quantity
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Enumerated(EnumType.STRING)
	private Category category;
	@Column(name = "product_name",length = 50,unique = true)
	private String productName;
	
	private double price;
	@Column( name = "available_quantity",length = 25)
	private int availableQuantity;
	public Products(Category category, String productName, double price, int availableQuantity) {
		super();
		this.category = category;
		this.productName = productName;
		this.price = price;
		this.availableQuantity = availableQuantity;
	}
	
	public Products() {
	
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getAvailableQuantity() {
		return availableQuantity;
	}
	public void setAvailableQuantity(int availableQuantity) {
		this.availableQuantity = availableQuantity;
	}

	@Override
	public String toString() {
		return "Products [id=" + id + ", category=" + category + ", productName=" + productName + ", price=" + price
				+ ", availableQuantity=" + availableQuantity + "]";
	}
	
	
	

}
