package com.OA.mainsite.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.OA.mainsite.entity.User;
import com.OA.mainsite.service.UserService;

@Controller
public class TextController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/text")
	String text(){
		User user=userService.getById(1);
		System.out.println("text");
		System.out.println(user.getUsername());
		return "index";
	}
     
}
