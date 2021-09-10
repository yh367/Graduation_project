package com.yh.controller;

import com.yh.domain.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.yh.service.saveUser;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccountController {

    @Autowired
    private saveUser saveUser;

    @RequestMapping("/register")
    public void saveAccount(Account account){
        saveUser.saveUser(account);
        System.out.println("controller业务层：保存帐户...");
    }
}
