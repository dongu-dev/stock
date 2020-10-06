/*
* File name : trading.js
* Author : swm
* Date of issue : 2020.10.05
* Update of revision : 2020.10.06
*/
//매수일, 매도일 입력시 보유일 자동계산
function trading() {
	var sdd = document.getElementById("buying_day").value;
	var edd = document.getElementById("sell_day").value;
	var bar = sdd.split('-');
	var sar = edd.split('-');
	var dbar = new Date(bar[0], bar[1], bar[2]);
	var dsar = new Date(sar[0], sar[1], sar[2]);
	var dif = dsar - dbar;
	var cDay = 24 * 60 * 60 * 1000;

	if(sdd && edd){
	   document.getElementById('hold_day').value = parseInt(dif/cDay)
	}
}


// 
$(document).ready(function(){
	$('#save').click(function(){
		$.ajax({
			url:'/rest/login'
			, type:'POST'
			, data:{id: inputId, pw: inputPw}
			, success: function(data){
				if(data == 'success'){
					location.href='/index';
				} else{
					$('#loginHelper').html("아이디 또는 비밀번호가 일치하지 않습니다.");
				}
			}
		})
	})
})