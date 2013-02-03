package com.coppernickel.corp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.coppernickel.corp.dao.StudentDao;

@Controller
@RequestMapping("/testDao")
public class TestDaoController{
	String response = null;
	@RequestMapping(method = RequestMethod.GET)
	public String printDao(ModelMap model) {
		response = accessDB();	
		model.addAttribute("daoMessage", response);
		
		return "testDao";// maps to the jsp name
	}

	public String accessDB() {
		StudentDao access = new StudentDao();
		return access.getStudents();
	}

}

//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;
//import org.springframework.web.servlet.mvc.AbstractController;
//
//import com.coppernickel.corp.dao.StudentDao;
//
//@Controller
//@RequestMapping("/testDao")
//public class TestDaoController extends AbstractController {
//	String response = null;
//
//	@Override
//	protected ModelAndView handleRequestInternal(HttpServletRequest arg0,
//			HttpServletResponse arg1) throws Exception {
//
//		// grab data from the backend
//		response = accessDB();
//		ModelAndView model = new ModelAndView("testDao");// this maps to the jsp
//															// name
//		// add the string to the model
//		model.addObject("daoMessage", response); // the first param maps to the
//													// ${daoMessage} element,
//													// the second is the string
//													// deliverable
//		// return it
//		return model;
//	}
//
//	public String accessDB() {
//		StudentDao access = new StudentDao();
//		return access.getStudents();
//	}
//
//}