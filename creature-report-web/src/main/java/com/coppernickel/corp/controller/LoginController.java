package com.coppernickel.corp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory
			.getLogger(LoginController.class);

	@RequestMapping(value = "/*", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "home";
	}

	@RequestMapping(value = "/loginError*", method = RequestMethod.GET)
	//@ResponseBody
	public String loginError(ModelMap model) {
		model.addAttribute("loginerror", "true");
		logger.info("Login error");
		String response = "You have a panty on your head!";
		//return response;
		return "home";
	}
}