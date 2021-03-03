package com.stock.pro.config;


import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.stock.pro.interceptor.RequestInterceptor;

@Configuration
public class WebConfig implements WebMvcConfigurer {
	
	@Value("${resources.notload.list}") // application.properties에 설정된 값을 가지고 오기
    private List<String> notLoadList;
	
	@Override
    public void addInterceptors(InterceptorRegistry registry) {
        
		// 해당 경로는 세션아이디 없어도 실행
		notLoadList.add("/");
		notLoadList.add("/signUp");
		notLoadList.add("/memberInfoFind");
		notLoadList.add("/memberPwFind");
		notLoadList.add("/memberAdd");
		notLoadList.add("/memberLogin");
		
		// 세션유지 안할 List 변수 선언
		registry.addInterceptor(new RequestInterceptor())
                .addPathPatterns("/**")
                .excludePathPatterns(notLoadList);
    }
}
