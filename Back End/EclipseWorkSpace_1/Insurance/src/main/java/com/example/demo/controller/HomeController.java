package com.example.demo.controller;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
 
@Controller
public class HomeController {
	@GetMapping("/home")
	public String displayHome() {
		return "HomePage";
	}
	@GetMapping("/customer")
	public String displayCustomerPage() {
		return "CustomerView";
	}
	@GetMapping("/lifecare")
	public String displayLifeCare() {
		return "Life";
	}
	@GetMapping("/homecare")
	public String displayLHomeCare() {
		return "Home";
	}
	@GetMapping("/childcare")
	public String displayChildCare() {
		return "Child";
	}
	@GetMapping("/healthcare")
	public String displayHealthCare() {
		return "Health";
	}
	@GetMapping("/vehiclecare")
	public String displayVehicle() {
		return "Vehicle";
	}
	@GetMapping("/rough")
	public String getRough() {
		return "Rough";
	}
 
}