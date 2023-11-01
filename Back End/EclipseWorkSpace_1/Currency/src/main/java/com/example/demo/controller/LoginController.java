package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.entity.Admin;
import com.example.demo.repositories.AdminRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {
	
	@Autowired
    private AdminRepository AdminRepository;
	
	
	@GetMapping("/home")
	public String getHome() {
		return "Home";
		}
	@PostMapping("/home")
	@ResponseBody
public String getValue() {
	return "Obtained The Value";
	}
	@GetMapping("/login")
	public String getLogin() {
		return "Login";
		}
	@GetMapping("/select")
    public String getSelect() {
    	return "Select";
    }
	@GetMapping("/error")
    public String getError() {
    	return "Error";
    }
	@PostMapping("/login")
//    public String login(@RequestParam String user, @RequestParam String pass, HttpSession session) {
//        Admin userFromDB = AdminRepository.findByUsernameAndPassword(user,pass);
//       
//        if (userFromDB != null) {
//         
//            session.setAttribute("loggedInUser", userFromDB);
//            return "redirect:/select";
//        } else {
//            return "redirect:/error"; 
//        }
	public String login(String user, String pass, Model model) {
        Admin admin = AdminRepository.findByUsernameAndPassword(user,pass);
        if (admin != null && admin.getPassword().equals(pass)) {
            return "redirect:/select";
        } else {
//            model.addAttribute("loginError", "Invalid username or password");
            return "redirect:/error";
        }
    }
}
