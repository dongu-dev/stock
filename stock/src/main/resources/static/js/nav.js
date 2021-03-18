/*
 * File name : nav.js
 * Author : swm
 * Date of issue : 2021.03.14
 * Update of revision : 
 */

// 네이버 종목 검색
function stockSearch() {
	
	let stockTitle = $('#stockSearchValue').val();
	
	$.ajax({
		url:'tradeGetCode'
		, type:'POST'
		, data:{stockName: stockTitle}
		, success: function(data){
			var stockCode = data;
			window.open("https://finance.naver.com/item/main.nhn?code="+stockCode+"",  "_blank");
		} , error : function(request, status, error) {
			var msg = "ERROR : " + request.status + "<br>"
			+ error;
			console.log(msg);
		}
	})
}