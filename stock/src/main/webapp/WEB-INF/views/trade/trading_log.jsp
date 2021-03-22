<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 
* File name : trading_log.jsp
* Author : swm
* Date of issue : 2020.09.18
-->
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>매매일지 작성</title>
    
    <script src="resources/js/trading.js"></script>
    
    <jsp:include page="/WEB-INF/views/header.jsp" />
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

	<jsp:include page="/WEB-INF/views/side.jsp" />

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <jsp:include page="/WEB-INF/views/nav.jsp" />

        <!-- Begin Page Content -->
		<div class="container-fluid">
			<!-- Page Heading -->
			<h1 class="h3 mb-2 text-gray-800">매매일지 작성(매수)</h1>
			<p class="mb-4">
				<button class="btn btn-primary btn-icon-split" id="write" >
			  		<span class="text">매매일지 설명 보기</span>
				</button>
			</p>

			<!-- DataTales Example -->
			<div class="card shadow mb-4">
              <div class="card-header py-3">
			    <h6 class="m-0 font-weight-bold text-primary">매매일지 등록양식</h6>
			  </div>
			  <div class="card-body">
                <div class="table-responsive">
			        <div class="card-body">
			                <div class="row">
			                    <div class="col-md-2 col-lg-3">
			                        <div class="form-group">
			                            <label class="control-label">종목코드</label>
			                            <input type="text" class="form-control" id="stock_code" placeholder="종목명 입력시 자동적재" value="" readonly />
			                        </div>
			                    </div>
			                    <div class="col-md-2 col-lg-3">
			                        <div class="form-group">
			                            <label class="control-label">종목명</label>
			                            <input type="text" class="form-control" id="stock_title" placeholder="종목명 입력 후 엔터(띄어쓰기 X)" onkeypress="stockTitle()" />
			                        </div>
			                    </div>
			                    <div class="col-md-2 col-lg-2">
			                        <div class="form-group">
			                            <label class="control-label">증권사 선택(PC)</label>
			                            <select class="form-control" id="stockBuyFeePC" onchange="feeCheck()">
			                            	<option value="">증권사 선택</option>
			                            	<option value="키움">키움증권</option>
			                            	<option value="미래에셋대우">미래에셋대우</option>
			                            	<option value="KB투자">KB투자증권</option>
			                            	<option value="삼성">삼성증권</option>
			                            	<option value="대신">대신증권</option>
			                            	<option value="교보">교보증권</option>
			                            	<option value="한국투자">한국투자증권</option>
			                            	<option value="나무">나무증권</option>
			                            </select>
			                        </div>
			                    </div>
			                    <div class="col-md-2 col-lg-2">
			                        <div class="form-group">
			                            <label class="control-label">증권사 선택(모바일)</label>
			                            <select class="form-control" id="stockBuyFeeMo" onchange="feeCheck()">
			                            	<option value="">증권사 선택</option>
			                            	<option value="키움">키움증권</option>
			                            	<option value="미래에셋대우">미래에셋대우</option>
			                            	<option value="KB투자">KB투자증권</option>
			                            	<option value="삼성">삼성증권</option>
			                            	<option value="대신">대신증권</option>
			                            	<option value="교보">교보증권</option>
			                            	<option value="한국투자">한국투자증권</option>
			                            	<option value="나무">나무증권</option>
			                            </select>
			                        </div>
			                    </div>                 
			                </div>
			                <div class="row">
			                	<div class="col-md-2 col-lg-2">
			                        <div class="form-group">
			                            <label class="control-label">매수일</label>
			                            <input type="date" class="form-control" id="buying_day" value="" onchange="trading()" />
			                        </div>
			                    </div>
			                	<div class="col-md-2 col-lg-2">
			                        <div class="form-group">
			                            <label class="control-label">매수수량</label>
			                            <input type="text" class="form-control" id="buy_quantity" numberonly="true" placeholder="단위(주)" onchange="priceCheck()" />
			                        </div>
			                    </div>	 
			                	<div class="col-md-2 col-lg-2">
			                        <div class="form-group">
			                            <label class="control-label">매수단가</label>
			                            <input type="text" class="form-control" id="buy_unit_price" numberonly="true" placeholder="단위(주)" onchange="priceCheck()" />
			                        </div>
			                    </div>	
			                    <div class="col-md-2 col-lg-2">
			                        <div class="form-group">
			                            <label class="control-label">매수 수수료</label>
			                            <input type="text" class="form-control" id="buy_fees" numberonly="true" placeholder="단위(원)" readonly />
			                        </div>
			                    </div>
			                    <div class="col-md-2 col-lg-2">
			                        <div class="form-group">
			                            <label class="control-label">매수금액</label>
			                            <input type="text" class="form-control" id="buy_price" numberonly="true" placeholder="단위(원)" readonly />
			                        </div>
			                    </div>
			                </div>
			                <button class="btn btn-primary btn-icon-split" id="trade_save" style="float: right;" onclick="tradeSave();">
			                	<span class="text ">저장</span>
			                </button>
			            </div>`
              	  </div>
              </div>
			</div>
		</div>
  		<!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <jsp:include page="/WEB-INF/views/footerJs.jsp" />
  
</body>

</html>