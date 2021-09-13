package com.yh.dao;

import com.yh.domain.Account;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

//访问数据库的接口，mybatis映射文件的前一层

@Repository//代表这是一个持久层
@Mapper
public interface AccountDao{

    public void saveUser(Account account);

}
