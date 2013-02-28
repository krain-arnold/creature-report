package com.coppernickel.corp.controller;


import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import com.coppernickel.corp.webapp.Reports;


@Controller
@RequestMapping("/report")
public class ReportFormController {

	private static final Logger logger = LoggerFactory.getLogger(ReportFormController.class);

	@RequestMapping(method = RequestMethod.GET)
	public String showform(Model model){
        model.addAttribute("report", new Reports());
        return "report";
	}
	@RequestMapping(value="/save", method={RequestMethod.POST}, produces="application/json")
	@ResponseBody public Map<String,String> homePageJson() {
		Map<String,String> result = new HashMap<String,String>();
		result.put("status", "success");
		result.put("content", "It Works!");
		return result;
	    }

//	@RequestMapping(value = "save", method = RequestMethod.POST, headers = {"content-type=application/json"}, produces="application/json")
//	public String save (@RequestBody String report) throws Exception
//	{
//		logger.info("Report Details: " + report);
//	    return "report";
//	}
	
}