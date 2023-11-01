package com.example.demo.controller;
 
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
 
import com.example.demo.model.User;
import com.example.demo.service.ManagerService;
 
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
 
@RestController
public class ManagerController {
	HttpServletRequest request;
	@Autowired
	ManagerService service;

	@GetMapping("/agent-detail")
	public void getAgentDetails(Model model,HttpServletRequest request) {
		Iterable<User> userLists = null;
		HttpSession session = request.getSession();
		String roleType="Agent";
		if(roleType.equals(session.getAttribute("role"))) {
		Iterable<User> userList=service.getAllUsers();
		Iterator<User> it=userList.iterator();
		List<User> user1=new ArrayList<User>();
		while(it.hasNext()) {
			  User user =  it.next();
			  if(user.getRole().equals("Agent")&&user.getStatus().equals("Active")) {
				  user1.add(user);
			  }
			  userLists = user1;
			  model.addAttribute("AgentActiveList",userLists);
		}
		}
	}
	@PostMapping("/update/{id}")
	public ModelAndView updateAgent(@PathVariable("id")int id) {
		service.updateAgent(id);
		ModelAndView mv = new ModelAndView("redirect:/agent-detail-all");
		return mv;
	}
	@GetMapping("/add-agent")
	public ModelAndView displayAddAgent(Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		String roleType="Manager";
		ModelAndView mv=new ModelAndView();
		if(roleType.equals(session.getAttribute("role"))) {
		mv.addObject("user",new User());
		mv.setViewName("AddAgent");
		return mv;
		}
		else {
			ModelAndView mv2 = new ModelAndView("redirect:/login");
			return mv2;
		}
	}
	@PostMapping("/add-agent")
	public ModelAndView addAgent(User user) {
		service.addAgent(user);
		ModelAndView mv = new ModelAndView("redirect:/agent-detail-all");
		return mv;
	}

 
}