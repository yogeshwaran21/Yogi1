package com.example.demo.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @RequestMapping("/exchange")
    public String homePage() {
        return "Exchange";
    }

    @PostMapping("/exchange")
    public String convertCurrency(
            @RequestParam String fromCurrency,
            @RequestParam String toCurrency,
            @RequestParam double amount,
            Model model) { 
    	double convertedAmount=0;
    	
        if(toCurrency.equals("USD")){
        double exchangeRate = 83;
        convertedAmount = amount * exchangeRate;  }     
        

        if(toCurrency.equals("INR")){
            double exchangeRate = 1;
            convertedAmount = amount * exchangeRate;}       
            
    
        if(toCurrency.equals("EUR")){
            double exchangeRate = 88;
            convertedAmount = amount * exchangeRate;}  
        
            model.addAttribute("fromCurrency", fromCurrency);
            model.addAttribute("toCurrency", toCurrency);
            model.addAttribute("amount", amount);
            model.addAttribute("convertedAmount", convertedAmount);
    
     
        return "Exchange";
    }
}
