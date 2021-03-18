/*
 * File name : trading.js
 * Author : swm
 * Date of issue : 2020.10.05
 * Update of revision : 2020.10.06
 */

// 매수일, 매도일 입력시 보유일 자동계산
/* function trading() {
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
}*/

// 종목명 입력시 종목코드 가져오기
function stockTitle() {
	
	let stockTitle = $('#stock_title').val();
	
	$.ajax({
		url:'tradeGetCode'
		, type:'POST'
		, data:{stockName: stockTitle}
		, success: function(data){
			var stockCode = data;
			$('input[id=stock_code]').attr('value', stockCode);
		} , error : function(request, status, error) {
			var msg = "ERROR : " + request.status + "<br>"
			+ error;
			console.log(msg);
		}
	})
}

// 천단위 콤마 제거(천단위 콤마제거는 sb-admin-2.js 위치)
function removeComma(str) {
	
	n = parseInt(str.replace(/,/g,""));
	return n;
}

// 주식 정보 저장
function tradeSave() {
	
	let put_stockTitle = $('#stock_title').val();
	let put_stockCode = $('#stock_code').val();
	let put_buyingDay = $('#buying_day').val();
	let put_sellDay = $('#sell_day').val();
	let put_holdDay = $('#hold_day').val();
	let put_holdQuantity = parseInt(removeComma($('#hold_quantity').val()));
	let put_buyPrice = parseInt(removeComma($('#buy_price').val()));
	let put_sellPrice = parseInt(removeComma($('#sell_price').val()));
	let put_proLossPrice = parseInt(removeComma($('#pro_loss_price').val()));
	
	alert(put_sellPrice);
	alert(put_proLossPrice);
	
	$.ajax({
		url:'tradeInfoSave'
		, type:'POST'
		, data:{stockTitle: put_stockTitle , stockCode: put_stockCode , buyingDay: put_buyingDay , sellDay: put_sellDay, holdDay: put_holdDay, holdQuantity: put_holdQuantity, buyPrice: put_buyPrice, sellPrice: put_sellPrice, proLossPrice: put_proLossPrice}
		, success: function(data){
			if(data == 'success'){
				alert("저장되었습니다.");
				return false;
			} else{
				alert("정상적으로 처리되지 않았습니다.");
			}
		}
	})
}
