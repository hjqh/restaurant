package com.example.interceptor;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer  {
	//注册拦截器
	@Override
	public void addInterceptors(InterceptorRegistry registry){
		List<String> url=new ArrayList<String>();
		url.add("/takefood1");
		url.add("/user_food1");
		registry.addInterceptor(new AdminLoginInterceptor()).addPathPatterns(url).excludePathPatterns("/login1");
	}
}
