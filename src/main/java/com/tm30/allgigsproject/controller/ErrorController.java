package com.tm30.allgigsproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@Controller("error")
public class ErrorController {
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handlerException(HttpServletRequest request, Exception ex) {
		ModelAndView modelView = new ModelAndView();
		modelView.addObject("exception", ex.getStackTrace());
		modelView.addObject("url", request.getRequestURL());
		modelView.setViewName("error");
		return modelView;
	}

}
