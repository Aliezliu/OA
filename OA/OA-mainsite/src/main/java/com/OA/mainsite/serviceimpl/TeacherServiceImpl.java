package com.OA.mainsite.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.OA.mainsite.dao.TeacherMapper;
import com.OA.mainsite.entity.AttendType;
import com.OA.mainsite.entity.Attendance;
import com.OA.mainsite.entity.Lecture;
import com.OA.mainsite.entity.Teacher;
import com.OA.mainsite.service.TeacherService;
import com.OA.mainsite.vo.LectureVo;
import com.OA.mainsite.vo.TeacherVo;

@Service("teacherService")
public class TeacherServiceImpl implements TeacherService{
    
	@Autowired
	private TeacherMapper teacherMapper; 
	
	@Override
	public TeacherVo selectByUsername(String username) {
				
		return teacherMapper.selectByUsername(username);
	}

	@Override
	public List<LectureVo> selectClassList(String username) {
		
		return teacherMapper.selectClassList(username);
	}

	@Override
	public Teacher selectTeacher(String username) {
		 
		return teacherMapper.selectTeacher(username);
	}

	@Override
	public List<Attendance> selectAttendance(Integer result,String username) {
		
		return teacherMapper.selectAttendance(result,username);
	}

	@Override
	public List<AttendType> selectAttendType() {
		
		return teacherMapper.selectAttendType();
	}

	@Override
	public List<Lecture> selectLecturesByIdAndName(String username, Integer id, String name) {
		
		return teacherMapper.selectLecturesByIdAndName(username, id, name);
	}
	
	
    
}
