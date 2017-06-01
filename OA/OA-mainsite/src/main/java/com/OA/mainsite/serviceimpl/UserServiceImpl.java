package com.OA.mainsite.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.OA.mainsite.dao.UserMapper;
import com.OA.mainsite.entity.User;
import com.OA.mainsite.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	UserMapper userMapper;
	
	@Override
	public User getById(Integer id) {
		return userMapper.selectById(id);
	
	}
  
}
