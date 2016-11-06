package com.springapp.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	@RequestMapping("/hello")
	public ModelAndView printWelcome() {
		ModelAndView modelAndView = new ModelAndView("hello");
		modelAndView.addObject("message", "hello");
		System.out.print(modelAndView);
		return modelAndView;
	}
}