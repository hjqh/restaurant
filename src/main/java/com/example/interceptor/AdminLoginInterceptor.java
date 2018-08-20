package com.example.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.example.model.User;

public  class AdminLoginInterceptor extends HandlerInterceptorAdapter  {
    private static final String[] URIs = {"/takefood1","/user_food1"};
 
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURL().toString();
        User user=new User();
        user =  (User)request.getSession().getAttribute("user"); 
        System.out.println(">>>: " + url);
        if(user==null){
	        for (String s : URIs) {
	            if (url.contains(s)) {//如果访问管理页面
	            	request.getRequestDispatcher("/login1").forward(request, response);
	                return false;
	            }
	        }
        }
        
        return true;
    }
 
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
    	super.postHandle(request, response, handler, modelAndView);
    }

}
