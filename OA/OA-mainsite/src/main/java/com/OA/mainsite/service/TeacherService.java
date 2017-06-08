package com.OA.mainsite.service;

import java.util.List;

import com.OA.mainsite.entity.Teacher;
import com.OA.mainsite.vo.LectureVo;
import com.OA.mainsite.vo.TeacherVo;

public interface TeacherService {
	TeacherVo selectByUsername(String username);
	List<LectureVo> selectClassList(String username);
	Teacher selectTeacher(String username);
}
