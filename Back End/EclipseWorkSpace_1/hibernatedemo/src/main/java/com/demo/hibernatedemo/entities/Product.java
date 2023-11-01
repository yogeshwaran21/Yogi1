package com.demo.hibernatedemo.entities;
 
import javax.annotation.processing.Generated;
 
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
 
@Entity
@Table(name = "prdtable")
public class Product {
	@Id
	@Column(name = "productid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int prdId;
	@Column(nullable = false)
	private String prdName;
	@ManyToOne
	@JoinColumn(name = "prdCategory", referencedColumnName = "categoryId")
	private Category prdCategory;
	private double prdPrice;
	public Product() {
		super();
	}
 
	public Product(int prdId, String prdName,  double prdPrice) {
		super();
		this.prdId = prdId;
		this.prdName = prdName;
		this.prdPrice = prdPrice;
	}
 
	public Product(String prdName, double prdPrice) {
		this.prdName = prdName;
		this.prdPrice = prdPrice;
	}
 
	public int getPrdId() {
		return prdId;
	}
 
	public void setPrdId(int prdId) {
		this.prdId = prdId;
	}
 
	public String getPrdName() {
		return prdName;
	}
 
	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}
 
	public double getPrdPrice() {
		return prdPrice;
	}
 
	public void setPrdPrice(double prdPrice) {
		this.prdPrice = prdPrice;
	}
 
	public Category getPrdCategory() {
		return prdCategory;
	}
 
	public void setPrdCategory(Category prdCategory) {
		this.prdCategory = prdCategory;
	}
 
	@Override
	public String toString() {
		return "Product [prdId=" + prdId + ", prdName=" + prdName + ", prdCategory=" + prdCategory + ", prdPrice="
				+ prdPrice + "]";
	}
 
}