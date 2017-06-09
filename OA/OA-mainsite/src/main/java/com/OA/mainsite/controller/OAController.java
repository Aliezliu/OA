package com.OA.mainsite.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.OA.mainsite.entity.AttendType;
import com.OA.mainsite.entity.Attendance;
import com.OA.mainsite.entity.Lecture;
import com.OA.mainsite.entity.Teacher;
import com.OA.mainsite.service.TeacherService;
import com.OA.mainsite.vo.LectureVo;
import com.OA.mainsite.vo.TeacherVo;

@Controller
public class OAController {
	
	@Autowired
	TeacherService teacherService;
	
	@RequestMapping("/dologin")
	String login(Model model, String username,String password){
		model.addAttribute("username", username);
		return "index";
	}
	
    
	@RequestMapping("/intro")
	String teacherIntro(HttpServletRequest request,Model model,String username){
		
		TeacherVo teacher = teacherService.selectByUsername(username);
		model.addAttribute("teacher", teacher);	
		return "intro";
	}
	@RequestMapping("/findClass")
	String findClass(HttpServletRequest request,Model model,String username){
		List<LectureVo> classList = teacherService.selectClassList(username);
		model.addAttribute("classList", classList);	
		return "findClass";
	}
	
	@RequestMapping("/searchClass")
	String searchClass(HttpServletRequest request,Model model,String username,Integer id,String name){
		List<Lecture> Lectures = teacherService.selectLecturesByIdAndName(username, id, name);
		model.addAttribute("Lectures", Lectures);	
		return "searchClass";
	}
	
	@RequestMapping("/personMain")
	String personMain(HttpServletRequest request,Model model,String username){
		Teacher teacher = teacherService.selectTeacher(username);
		model.addAttribute("teacher", teacher);
		return "personMain";
	}
	@RequestMapping("/personCheck")
	String personCheck(HttpServletRequest request,Model model,String username,Integer result){
		List<AttendType> type = teacherService.selectAttendType();
		List<Attendance> attendance = teacherService.selectAttendance(1,username);
		model.addAttribute("type", type);
		model.addAttribute("attendance", attendance);
		return "personCheck";
	}
	
}
