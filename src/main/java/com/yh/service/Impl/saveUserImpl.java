package com.yh.service.Impl;

import com.yh.dao.AccountDao;
import com.yh.domain.Account;
import com.yh.service.saveUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userSave")
public class saveUserImpl implements saveUser{

    @Autowired
    private AccountDao accountDao;

    @Override
    public  void  saveUser(Account account){

        System.out.println("Service业务层：保存帐户...");
        accountDao.saveUser(account);
    }
}
