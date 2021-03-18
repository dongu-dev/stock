/*
 * File name : member.js
 * Author : swm
 * Date of issue : 2020.10.06
 * Update of revision : 
 */

$(document).ready(function(){

	// 회원정보 유효성 검사
	$('#regist').click(function() {
		
		let signName = $('#name').val();
		let signId = $('#id').val();
		let signPassword = $('#password').val();
		let signEmail = $('#email').val();
		let num = signPassword.search(/[0-9]/g);
 		let eng = signPassword.search(/[a-z]/ig);
		let exptext = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		
		for (var i=0; i<signName.length; i++)  { 
		    var chk = signName.substring(i,i+1); 
		    if(chk.match(/[0-9]|[a-z]|[A-Z]/)) { 
		    	alert("이름을 정확히 입력해주세요");
		        return;
		    }
		
		    if(chk.match(/([^가-힣\x20])/i)){
		    	alert("이름을 정확히 입력해주세요");
		        return;
		    }
		
		    if($("#name").val() == " "){
		    	alert("이름을 정확히 입력해주세요");
		        return;
		    }
		} 
		
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
						, data:{memberId: signId, memberPw: signPassword, memberEmail: signEmail, memberName: signName}
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
				alert("아이디 및 비밀번호를 입력해주세요");
			return false;
		}
	});
	
	// 로그인하기
	$('#memberLogin').click(function() {
		
		let loginId = $('#loginId').val();
		let loginPw = $('#loginPw').val();
		
		if(loginId != '' && loginPw != '') {
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
		} else {
			alert("값이 입력되지 않았습니다.");
			return false;
		}
	});
	
	// 로그아웃할 때 알림기능
	$('#memberLogout').click(function() {
		let logout = confirm("로그아웃 하시겠습니까?");
		
		if(logout == true) {
			location.href="memberLogout";
		} else {
			return false;
		}
	});
	
	// 로그인 버튼 엔터키 활성화
	$('#loginId, #loginPw').keypress(function(event){
    	 if( event.which == 13 ) {
   	   		$('#memberLogin').click();
   		    return false;
   		 }
	});
});