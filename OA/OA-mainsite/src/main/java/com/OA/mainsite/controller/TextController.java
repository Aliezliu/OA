package com.OA.mainsite.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.OA.mainsite.entity.AttendType;
import com.OA.mainsite.entity.Attendance;
import com.OA.mainsite.entity.Lecture;
import com.OA.mainsite.entity.Teacher;
import com.OA.mainsite.service.TeacherService;
import com.OA.mainsite.vo.LectureVo;
import com.OA.mainsite.vo.TeacherVo;

@Controller
public class TextController {
	
	@Autowired
	TeacherService teacherService;
	
	@RequestMapping("/text")
	String text(Model model){
		int result = 1;
		return "index";
		
	}
	
	
	@RequestMapping("/text1")
	String text1(Model model){
		
		List<AttendType> selectAttendType = teacherService.selectAttendType();
		model.addAttribute("selectAttendType", selectAttendType);
		return "index";
		
	}
	@RequestMapping("/text2")
	String text2(Model model){
		
		TeacherVo selectByUsername = teacherService.selectByUsername("wzy");
		model.addAttribute("selectByUsername", selectByUsername);
		return "index";
		
	}
	@RequestMapping("/text3")
	String text3(Model model){
		
		List<LectureVo> selectClassList = teacherService.selectClassList("wzy");
		model.addAttribute("selectClassList", selectClassList);
		return "index"; 
		
	}
	@RequestMapping("/text4")
	String text4(Model model){
		List<Lecture> Lectures = teacherService.selectLecturesByIdAndName("wzyuser", null, "22");
		model.addAttribute("Lectures", Lectures);
		return "index";
		
	}
	@RequestMapping("/text5")
	String text5(Model model){
		
		Teacher selectTeacher = teacherService.selectTeacher("wzy");
		model.addAttribute("selectTeacher", selectTeacher);
		return "index";
		
	}
	@RequestMapping("/{path}")
	String login(@PathVariable("path") String path){
		return path;
	}
	
     
}
