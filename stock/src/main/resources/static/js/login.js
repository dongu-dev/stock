/*
 * File name : login.js
 * Author : swm
 * Date of issue : 2021.02.03
 * Update of revision : 
 */

$(document).ready(function(){
	
	$('#signUp').click(function() {
		location.href='signUp';
	});
	
	$('#regist').click(function() {
		
		let id = $('#id').val();
		let pw = $('#password').val();
		let email = $('#email').val();
		let num = pw.search(/[0-9]/g);
 		let eng = pw.search(/[a-z]/ig);
		
		if(id != '' && pw != '') {
			if(pw.length < 8 || pw.length > 20){
			 	 	alert("8자리 ~ 20자리 이내로 입력해주세요.");
			     return false;
			} else if(pw.search(/\s/) != -1){
			     	alert("비밀번호는 공백 없이 입력해주세요.");
			     return false;
			} else if(num < 0 || eng < 0){
			     	alert("영문,숫자를 혼합하여 입력해주세요.");
			     return false;
			} else {
				
			     alert("등록완료");
			}
		} else {
				alert("값을 입력해주세요");
			return false;
		}
	});
});