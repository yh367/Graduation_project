package com.yh.service.Impl;

import com.yh.dao.LoginUserDao;
import com.yh.domain.Account;
import com.yh.service.loginUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("loginUser")
public class loginUserlmpl implements loginUser {

    @Autowired
    private LoginUserDao loginUserDao;

    @Override
    public Account searchAccount(String username,String pwd){

        Account account = loginUserDao.searchAccount(username, pwd);
        return account;
    }
}
