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
	<div class="sidenav">
         <div class="login-main-text">
            <h2>주식매매일지</h2>
            <p>로그인 또는 회원가입을 통하여 접속해주세요.</p>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               <div class="form-group">
                   <label>아이디</label>
                   <input id="loginId" type="text" class="form-control" placeholder="아이디를 입력해주세요">
               </div>
               <div class="form-group">
                   <label>비밀번호</label>
                   <input id="loginPw" type="password" class="form-control" placeholder="비밀번호를 입력해주세요.">
               </div>
               <button id="memberLogin" type="submit" class="col-md-12 col-sm-12 btn btn-black">로그인</button><br><br>
               <button id="signUp" type="submit" class="col-md-3 col-sm-12 btn btn-secondary">회원가입</button>
               <button id="memberInfoFind" type="submit" class="col-md-4 col-sm-12 btn btn-secondary">회원정보 찾기</button>
               <button id="memberPwFind" type="submit" class="col-md-4 col-sm-12 btn btn-secondary">비밀번호 찾기</button>
            </div>
         </div>
      </div>
</body>
</html>