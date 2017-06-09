package com.OA.mainsite.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.OA.mainsite.entity.AttendType;
import com.OA.mainsite.entity.Attendance;
import com.OA.mainsite.entity.Lecture;
import com.OA.mainsite.entity.Teacher;
import com.OA.mainsite.vo.LectureVo;
import com.OA.mainsite.vo.TeacherVo;

public interface TeacherMapper {
    
	TeacherVo selectByUsername(String username);
	List<LectureVo> selectClassList(String username);
	Teacher selectTeacher(String username);
	List<Attendance> selectAttendance(@Param("result")Integer result,@Param("username")String username);
	List<AttendType> selectAttendType();
	List<Lecture> selectLecturesByIdAndName(@Param("username")String username,
			@Param("id")Integer id,@Param("name")String name);
}
