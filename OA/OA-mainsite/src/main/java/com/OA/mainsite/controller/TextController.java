package com.OA.mainsite.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.OA.mainsite.service.TeacherService;
import com.OA.mainsite.vo.TeacherVo;

@Controller
public class TextController {
	
	@Autowired
	TeacherService teacherService;
	
	@RequestMapping("/text")
	String text(Model model){
		TeacherVo teacher=teacherService.selectByUsername("wzy");
		model.addAttribute("teacher", teacher);
		return "index";
	}
     
}
