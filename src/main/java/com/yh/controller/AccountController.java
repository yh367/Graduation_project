package com.yh.controller;

import com.yh.domain.Account;
import com.yh.service.saveUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccountController {

    @Autowired
    private saveUser saveUser;

    @RequestMapping("/register")
    public void saveAccount(Account account){
        System.out.println("controller层：保存帐户...");
        saveUser.saveUser(account);
    }
}
