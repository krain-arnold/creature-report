package com.coppernickel.corp.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class UserController {

	private String currentUserName="";
	
	@RequestMapping(value="/welcome",method = RequestMethod.GET)
	public String welcome(Model model,Principal principal){
		
		currentUserName = principal.getName();
		model.addAttribute("userName",currentUserName);
		
		return "user/welcome";
	}
}