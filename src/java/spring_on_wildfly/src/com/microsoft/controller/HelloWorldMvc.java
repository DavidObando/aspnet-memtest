package com.microsoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorldMvc {
	@RequestMapping("/home")
	public ModelAndView helloWorld() {
		String message = "Hello World Spring Mvc";
		return new ModelAndView("home", "message", message);
	}
}
