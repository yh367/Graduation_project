package com.yh.controller;

import com.yh.domain.Account;
import com.yh.service.loginUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class LoginController {

    @Autowired
    private loginUser loginUser;


    @RequestMapping("/login")
    public String loginUser(HttpServletRequest request, HttpServletResponse response)throws IOException {

        //按照账户和密码查询数据库
        String username = request.getParameter("username");
        String pwd = request.getParameter("pwd");
        Account account = loginUser.searchAccount(username,pwd);
        System.out.println(account);
        HttpSession session = request.getSession(true);

        //判断用户是否存在
            if (account!=null) {
                session.setAttribute("account", account.getUsername());
                Cookie cookie = new Cookie("account", account.getUsername());
                cookie.setMaxAge(-1);//关闭了浏览器就删除了cookie
                response.addCookie(cookie);
                return "index";
            }else {
                return "HTML/error/loginerror";
            }

    }

}
