package com.coppernickel.corp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory
			.getLogger(LoginController.class);

	@RequestMapping(value = "/*", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "home";
	}

	@RequestMapping(value = "/loginError*", method = RequestMethod.GET)
	public String loginError(ModelMap model) {
		model.addAttribute("loginerror", "true");
		logger.info("Login error");
		return "home";
	}
}