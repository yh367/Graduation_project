package com.yh.dao;

import com.yh.domain.Account;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository//代表这是一个持久层
@Mapper
public interface LoginUserDao {
    public Account searchAccount(@Param("username") String username,@Param("pwd") String pwd);
}
