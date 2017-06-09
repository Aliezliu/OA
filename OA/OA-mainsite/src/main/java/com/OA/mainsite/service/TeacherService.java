package com.OA.mainsite.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.OA.mainsite.entity.AttendType;
import com.OA.mainsite.entity.Attendance;
import com.OA.mainsite.entity.Lecture;
import com.OA.mainsite.entity.Teacher;
import com.OA.mainsite.vo.LectureVo;
import com.OA.mainsite.vo.TeacherVo;

public interface TeacherService {
	TeacherVo selectByUsername(String username);
	List<LectureVo> selectClassList(String username);
	Teacher selectTeacher(String username);
	List<Attendance> selectAttendance(Integer result,String username);
	List<AttendType> selectAttendType();
	List<Lecture> selectLecturesByIdAndName(String username,Integer id,String name);
}
