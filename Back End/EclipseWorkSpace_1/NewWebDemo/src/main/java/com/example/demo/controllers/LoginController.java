package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
 
@Controller
 
 
public  class LoginController {
	@GetMapping("/login")	
public String sayHello() {
	return "login";
	
}
	@PostMapping("/login")
	@ResponseBody
public String validateUser() {
	return "Login Validation";
	}
}
 