<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 페이지</title>
		
		<jsp:include page="/WEB-INF/views/header.jsp" />
		
		<link href="resources/css/signUp.css" rel="stylesheet">
		
		<script src="resources/js/member.js"></script>
	</head>
	<body>
		<div class="container">
	        <div class="row">
				<div class="col-md-5 mx-auto">
				<div id="first">
					<div class="myform form ">
						 <div class="logo mb-3">
							 <div class="col-md-12 text-center">
								<h1>회원가입</h1>
							 </div>
						</div>
						<div class="form-group">
	                       <label for="exampleInputEmail1">이름</label>
	                       <input type="text" name="memberName" id="name" class="form-control"  aria-describedby="emailHelp" placeholder="이름를 입력해주세요.">
	                    </div>
	                    <div class="form-group">
	                       <label for="exampleInputEmail2">아이디</label>
	                       <input type="text" name="memberId"  id="id" class="form-control"  aria-describedby="emailHelp" placeholder="아이디를 입력해주세요.">
	                    </div>
	                    <div class="form-group">
	                       <label for="exampleInputEmail1">비밀번호</label>
	                       <input type="password" name="memberPassword" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="비밀번호를 입력해주세요.">
	                    </div>
	                    <div class="form-group">
	                       <label for="exampleInputEmail1">이메일</label>
	                       <input type="email" name="memberEmail" id="email" class="form-control"  aria-describedby="emailHelp" placeholder="이메일을 입력해주세요.">
	                    </div>
	                    <div class="col-md-12 text-center ">
	                       <button id="regist" class=" btn btn-block mybtn btn-primary tx-tfm">등록하기</button>
	                    </div>
					</div>
				</div>
				</div>
			</div>
	     </div>
	</body>
</html>