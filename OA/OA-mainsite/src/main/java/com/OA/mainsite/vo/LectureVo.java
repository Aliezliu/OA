package com.OA.mainsite.vo;

import java.util.Date;

public class LectureVo {
	 private Integer id;
     public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	private String teacher;
     private String type;
     private Date time;
     private String name;
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
