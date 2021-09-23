package com.yh.service;

import com.yh.domain.Account;

public interface loginUser {

    //查询账户信息
    public Account searchAccount(String username,String pwd);
}
