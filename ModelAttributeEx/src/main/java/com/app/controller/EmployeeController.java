package com.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.app.model.Employee;

@Controller
public class EmployeeController {

	@RequestMapping(value={"/home"},method=RequestMethod.GET)
	public ModelAndView showHomePage(){
		ModelAndView mav =new ModelAndView();
		mav.setViewName("Home");
		return mav;
	}
	
	@RequestMapping(value={"/form"},method=RequestMethod.GET)
	public ModelAndView showRegisterPage(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("Register");
		return mav;
	}
	
	@RequestMapping(value={"/insert"},method=RequestMethod.POST)
	public ModelAndView showFormOut(@ModelAttribute("employee")Employee employee){
		
		String message="inserted Successfully..";
		ModelAndView mav=new ModelAndView();
		mav.addObject("emp", employee);
		mav.addObject("message", message);
		mav.setViewName("Show");
		return mav;
	}
	
}
