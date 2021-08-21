/*
 * File name : trading.js
 * Author : swm
 * Date of issue : 2020.10.05
 * Update of revision : 2020.10.06
 */

// 매수일, 매도일 입력시 보유일 자동계산
/* 
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
*/

// 천 단위 콤마(2021.03.30) - 매수 수수료, 매수 금액 콤마 기능
function addComma(data) {
    return data.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

// 증권사 별 매매수수료 계산(PC, Mo)
function feeCheck(mul) {
	
	let	scNamePC = document.getElementById("stockBuyFeePC").value;
	let	scNameMo = document.getElementById("stockBuyFeeMo").value;
	let stockFee = 0;
	
	if(scNamePC && scNameMo) {
		alert("증권사 중복선택은 불가능합니다");
		
		document.getElementById('stockBuyFeePC').value = "";
		document.getElementById('stockBuyFeeMo').value = "";
	} else if(scNamePC) {
		if(scNamePC == "키움") {
			stockFee = 0.00015;
		} else if(scNamePC == "미래에셋대우") {
			stockFee = 0.00014;
			
		} else if(scNamePC == "KB투자") {
			stockFee = 0.000773;
			
		} else if(scNamePC == "삼성" || scNamePC == "대신") {
			stockFee = 0.0008;
			
		} else if(scNamePC == "한국투자") {
			stockFee = 0.000142;
			
		} else if(scNamePC == "교보") {
			stockFee = 0.000692;
			
		} else if(scNamePC == "나무") {
			stockFee = 0.0001;
			
		}
	} else if(scNameMo) {
		if(scNameMo == "키움") {
			stockFee = 0.00015;
					
		} else if(scNameMo == "미래에셋대우") {
			stockFee = 0.00014;
			
		} else if(scNameMo == "KB투자") {
			stockFee = 0.001973;
			
		} else if(scNameMo == "삼성" || scNameMo == "대신") {
			stockFee = 0.0008;
			
		} else if(scNameMo == "대신") {
			stockFee = 0.001973;
			
		} else if(scNameMo == "한국투자") {
			stockFee = 0.000142;
			
		} else if(scNameMo == "교보") {
			stockFee = 0.001492;
			
		} else if(scNameMo == "나무") {
			stockFee = 0.0001;
			
		}
	}
	
	stockBuyFee = mul * stockFee;
	
	return stockBuyFee;
}

// 매수금액, 수수료 구하기
function priceCheck() {
    let quantity = document.getElementById("buy_quantity").value;
    let unit_price = document.getElementById("buy_unit_price").value;
    let stockFeePC = document.getElementById("stockBuyFeePC").value;
    let stockFeeMo = document.getElementById("stockBuyFeeMo").value;
    
    let qdd = parseInt(removeComma(quantity));
    let udd = parseInt(removeComma(unit_price));
    
    // 매수금액, 수수료 구하기
    if(qdd && udd && stockFeePC){
		document.getElementById('buy_fees').value = addComma(parseInt(feeCheck(qdd * udd)));
		document.getElementById('buy_price').value = addComma(parseInt((qdd * udd) - feeCheck(qdd * udd)));
	} else if (qdd && udd && stockFeeMo) {
		document.getElementById('buy_fees').value = addComma(parseInt(feeCheck(qdd * udd)));
		document.getElementById('buy_price').value = addComma(parseInt((qdd * udd) - feeCheck(qdd * udd)));
	} else {
	    document.getElementById('buy_fees').value = 0;
	    document.getElementById('buy_price').value = 0;
	}
}

// 천단위 콤마 제거(천단위 콤마제거는 sb-admin-2.js 위치)
function removeComma(str) {
	
	n = parseInt(str.replace(/,/g,""));
	return n;
}

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


// 주식 정보 저장
function tradeSave(arg) {
	
	//매수,매도 구분
	if(arg==1) {
		let put_stockTitle = $('#stock_title').val();
		let put_stockCode = $('#stock_code').val();
		let put_buyingDay = $('#buying_day').val();
		let put_buyQuantity = parseInt(removeComma($('#buy_quantity').val()));
		let put_buy_unit_price = parseInt(removeComma($('#buy_unit_price').val()));
		let put_buy_fees = parseInt(removeComma($('#buy_fees').val()));
		let put_buy_price = parseInt(removeComma($('#buy_price').val()));
		
		$.ajax({
			url:'tradeInfoBuySave'
			, type:'POST'
			, data:{
					 stockTitle: put_stockTitle 
					 , stockCode: put_stockCode 
					 , buyingDay: put_buyingDay 
					 , buyQuantity: put_buyQuantity
					 , buyUnitPrice: put_buy_unit_price 
					 , buyFees: put_buy_fees 
					 , buyPrice: put_buy_price
					 }
			, success: function(data){
				if(data == 'success'){
					alert("저장되었습니다.");
					location.reload();
				} else{
					alert("정상적으로 처리되지 않았습니다.");
				}
			}
		})
	} else if(arg==0) {
		
		let put_stockTitle = $('#stock_title').val();
		let put_stockCode = $('#stock_code').val();
		let put_sellDay = $('#sell_day').val();
		let put_sellQuantity = parseInt(removeComma($('#sell_quantity').val()));
		let put_sell_unit_price = parseInt(removeComma($('#sell_unit_price').val()));
		let put_sell_fees = parseInt(removeComma($('#sell_fees').val()));
		let put_sell_price = parseInt(removeComma($('#sell_price').val()));
		
		$.ajax({
			url:'tradeInfoSellSave'
			, type:'POST'
			, data:{	
					stockTitle: put_stockTitle 
					, stockCode: put_stockCode 
					, sellDay: put_sellDay 
					, sellQuantity: put_sellQuantity 
					, sellUnitPrice: put_sell_unit_price 
					, sellFees: put_sell_fees 
					, sellPrice: put_sell_price
					}
			, success: function(data){
				if(data == 'success'){
					alert("저장되었습니다.");
					location.reload();
				} else{
					alert("정상적으로 처리되지 않았습니다.");
				}
			}
		})
	}

	
}
