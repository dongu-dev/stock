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


$(document).ready(function(){
	$('#trade_save').click(function(){
		$.ajax({
			url:'/rest/tradeInfoSave'
			, type:'POST'
			, data:{itemCode: item_code , buyingDay: buying_day, sellDay: sell_day, holdDay: hold_day, holdQuantity: hold_quantity, buyPrice: buy_price, sellPrice: sell_price, proLossPrice: pro_loss_price}
			, success: function(data){
				if(data == 'success'){
					
				} else{
				
				}
			}
		})
	})
})