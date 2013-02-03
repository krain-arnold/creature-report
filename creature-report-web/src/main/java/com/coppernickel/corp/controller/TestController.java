package com.coppernickel.corp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/test")
public class TestController {

	@RequestMapping(method = RequestMethod.GET)
	public String printTest(ModelMap model){
		model.addAttribute("msg", "this is from TestController");
		return "testView";
	}
	

}