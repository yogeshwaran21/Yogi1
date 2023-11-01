package com.example.demo.service;
 
import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import com.example.demo.model.Product;
import com.example.demo.repositories.ProductRepository;
 
@Service
public class ProductService {
	@Autowired
	ProductRepository repository;
	public Product getProductById(int prdId) {
		Product prd=repository.findById(prdId).get();
		return prd;
	}
	public Iterable<Product> getAllProducts(){
		Iterable<Product> products=repository.findAll();
		return products;
	}
	public String saveProduct(Product prd) {
		repository.save(prd);
		return "Product Added";
	}
}
 