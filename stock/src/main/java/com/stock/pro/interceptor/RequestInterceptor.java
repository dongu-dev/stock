package com.stock.pro.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class RequestInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		log.info("Interceptor > preHandle");

		// 요청시 세션 가져오기
		HttpSession session = request.getSession();
		String memberId = (String) session.getAttribute("memberId");

		// 세션값 확인
		if (ObjectUtils.isEmpty(memberId)) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 정보가 비어있어 로그인페이지로 이동합니다.'); location.href='/';</script>");
			out.flush();

			return false;
		} else {
			// 세션 값 유지 30분이상 안될 시 초기화
			session.setMaxInactiveInterval(30 * 60);
			return true;
		}
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) {
		log.info("================ Method Executed");
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
			Exception ex) {
		log.info("================ Method Completed");
	}
}
