package com.OA.mainsite.dao;

import com.OA.mainsite.entity.User;

public interface UserMapper {
   User selectById(Integer id);
}