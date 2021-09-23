//package com.yh.filter;
//
//import com.yh.domain.Account;
//
//import javax.servlet.*;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.annotation.WebInitParam;
//import javax.servlet.http.HttpServletRequest;
//import java.io.IOException;
//
//
//@WebFilter(filterName = "PriviledgeFilter",
//        urlPatterns = "/*",/*通配符（*）表示对所有的web资源进行拦截*/
//        initParams = {
//                @WebInitParam(name = "charset", value = "utf-8")/*这里可以放一些初始化的参数*/
//        })
//public class PriviledgeFilter implements Filter {
//
//    private String filterName;
//    private String charset;
//
//    @Override
//    public void init(FilterConfig filterConfig) throws ServletException {
//
//    }
//
//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//        HttpServletRequest httpServletRequest = (HttpServletRequest)request;
//        Account user = (Account) httpServletRequest.getSession().getAttribute("account");
//        if(null != user) {
//            //已登录，放行
//            chain.doFilter(request, response);
//        } else {
//            //未登录，提示登录
//            httpServletRequest.setAttribute("msg", "您还没有登录，请登录后访问");
//            httpServletRequest.getRequestDispatcher("/HTML/login.html").forward(request, response);
//        }
//    }
//
//    @Override
//    public void destroy() {
//        System.out.println(filterName + "销毁");
//    }
//}