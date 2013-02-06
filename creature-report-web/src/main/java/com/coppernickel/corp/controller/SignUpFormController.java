package com.coppernickel.corp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.validation.BindingResult;

import com.coppernickel.corp.webapp.Users;

@RequestMapping("/signup")
@SessionAttributes("user")
@Controller
public class SignUpFormController {

	private static final Logger logger = LoggerFactory.getLogger(SignUpFormController.class);

	@RequestMapping(method= RequestMethod.GET)
	public String showform(Model model){
        model.addAttribute("user", new Users());
        return "signup";
}
	@RequestMapping(method=RequestMethod.POST)
	public String submitform(@ModelAttribute("user") Users user, BindingResult result, Model model){
		logger.info("User Details: " + user.toString());
		return "success";	
	}
}