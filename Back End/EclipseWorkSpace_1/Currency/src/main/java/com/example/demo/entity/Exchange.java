package com.example.demo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
 
@Entity
public class Exchange {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String fromCurrency;
    private String toCurrency;
    private double amount;
	public int getId() {
		return id;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFromCurrency() {
		return fromCurrency;
	}
	public void setFromCurrency(String fromCurrency) {
		this.fromCurrency = fromCurrency;
	}
	public String getToCurrency() {
		return toCurrency;
	}
	public void setToCurrency(String toCurrency) {
		this.toCurrency = toCurrency;
	}
}
 
