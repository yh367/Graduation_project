package com.yh.dao;

import com.yh.domain.Account;
import org.springframework.stereotype.Repository;

import java.util.List;

//访问数据库的接口，mybatis映射文件的前一层

@Repository//代表这是一个持久层
public interface AccountDao extends List<Account> {

    public List<Account> saveUser(Account account);
}
