<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 
* File name : login_page.jsp
* Author : swm
* Date of issue : 2021.02.02
-->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>주식매매일지 로그인 화면입니다.</title>
		
		<jsp:include page="/WEB-INF/views/header.jsp" />
		
		<link href="resources/css/login.css" rel="stylesheet">
		<script src="resources/js/member.js"></script>
	</head>
<body>
    <div id="login">
        <h3 class="text-center text-white pt-5">주식매매일지 프로그램</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                       <h3 class="text-center text-info">로그인</h3>
                       <div class="form-group">
                            <label for="username" class="text-info">아이디</label><br>
                            <input type="text" id="loginId" class="form-control" >
                       </div>
                       <div class="form-group">
                            <label for="password" class="text-info">비밀번호</label><br>
                            <input type="password" id="loginPw" class="form-control" >
                       </div>
                       <div class="form-group">
                            <button id="memberLogin" class="btn btn-info btn-md">로그인</button>
                       </div>
                       <div id="register-link">
                            <a href="memberInfoFind" class="text-info">아이디 찾기</a> /
                            <a href="memberPwFind" class="text-info">비밀번호 찾기</a> /
                            <a href="signUp" class="text-info">회원가입</a>
                       </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>