/*
 * File name : member.js
 * Author : swm
 * Date of issue : 2020.10.06
 * Update of revision : 
 */

$(document).ready(function(){
	
	// 회원가입 페이지 호출
	$('#signUp').click(function() {
		location.href='signUp';
	});
	
	// 회원정보 찾기 페이지 호출
	$('#memberInfoFind').click(function() {
		location.href='memberInfoFind';
	});
	
	// 비밀번호 찾기 페이지 호출
	$('#memberPwFind').click(function() {
		location.href='memberPwFind';
	});
	
	// 회원정보 유효성 검사
	$('#regist').click(function() {
		
		let signId = $('#id').val();
		let signPassword = $('#password').val();
		let signEmail = $('#email').val();
		let num = signPassword.search(/[0-9]/g);
 		let eng = signPassword.search(/[a-z]/ig);
		let exptext = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		
		if(signId != '' && signPassword != '') {
			if(signPassword.length < 8 || signPassword.length > 20){
			 	 	alert("8자리 ~ 20자리 이내로 입력해주세요.");
			     return false;
			} else if(signPassword.search(/\s/) != -1){
			     	alert("비밀번호는 공백 없이 입력해주세요.");
			     return false;
			} else if(num < 0 || eng < 0){
			     	alert("영문,숫자를 혼합하여 입력해주세요.");
			     return false;
			} else {
				if(exptext.test(signEmail)==false){		
						alert("이 메일형식이 올바르지 않습니다.");
						document.addjoin.signEmail.focus();
					return false;
				} else {
					$.ajax ({
						url:'memberAdd'
						, type:'POST'
						, data:{memberId: signId, memberPw: signPassword, memberEmail: signEmail}
						, success: function(data) {
							if(data == 'success') {
								alert("회원가입이 정상적으로 처리되었습니다.")
								location.href='/';
							} else {
								alert("회원가입이 정상적으로 처리되지않았습니다.");
								return false;
							}
						}
					})
				}
			}
		} else {
				alert("값을 입력해주세요");
			return false;
		}
	});
	
	// 로그인하기
	$('#memberLogin').click(function() {
	
		let loginId = $('#loginId').val();
		let loginPw = $('#loginPw').val();
		
		$.ajax ({
			url:'memberLogin'
			, type:'POST'
			, data:{memberId: loginId, memberPw: loginPw}
			, success: function(data) {
				if(data == 'success') {
					location.href='/index';
				} else {
					alert("로그인 정보가 일치하지 않습니다.");
					return false;
				}
			}
		})
	});
	
	// 로그아웃할 때 알림기능(아직 개발 해야함)
	$('#memberLogout').click(function() {
		let logout = confirm("로그아웃 하시겠습니까?");
		
		if(logout == true) {
			location.href="memberLogout";
		} else {
			return false;
		}
	});
});