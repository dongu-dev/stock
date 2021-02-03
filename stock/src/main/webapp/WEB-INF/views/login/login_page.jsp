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
		
		<script src="resources/js/login.js"></script>
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
                   <input type="text" class="form-control" placeholder="User Name">
               </div>
               <div class="form-group">
                   <label>비밀번호</label>
                   <input type="password" class="form-control" placeholder="Password">
               </div>
               <button id="login" type="submit" class="btn btn-black">로그인</button>
               <button id="signUp" type="submit" class="btn btn-secondary">회원가입</button>
            </div>
         </div>
      </div>
</body>
</html>