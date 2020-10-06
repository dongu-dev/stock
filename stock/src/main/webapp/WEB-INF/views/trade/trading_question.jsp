<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 
* File name : trading_log.jsp
* Author : swm
* Date of issue : 2020.09.18
* Update of revision : 
-->
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>매매일지 문의</title>
	
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
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

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <form class="form-inline">
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
              <i class="fa fa-bars"></i>
            </button>
          </form>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Page Heading -->
			<h1 class="h3 mb-2 text-gray-800">매매일지 문의</h1>
			<p class="mb-4">매매일지에 대하여 피드백을 남겨주시면 확인하여 추가적인 반영 또는 수정을 할 계획입니다.</p>

			<!-- DataTales Example -->
			<div class="card shadow mb-4">
              <div class="card-header py-3">
			    <h6 class="m-0 font-weight-bold text-primary">문의 양식</h6>
			  </div>
			  <div class="card-body">
                <div class="table-responsive">
			        <div class="card-body">
			                <div class="row">
			                    <div class="ccol-md-2 col-lg-3">
			                        <div class="form-group">
			                            <label class="control-label">종목명</label>
			                            <input type="text" class="form-control" id="item_code" placeholder="종목명을 입력해주세요" />
			                        </div>
			                    </div>
			                    <div class="col-md-2 col-lg-3">
			                        <div class="form-group">
			                            <label class="control-label">매수일</label>
			                            <input type="date" class="form-control" id="buying_day" value="" onchange="trading()" />
			                        </div>
			                    </div>
			                    <div class="col-md-2 col-lg-3">
			                        <div class="form-group">
			                            <label class="control-label">매도일</label>
			                            <input type="date" class="form-control" id="sell_day" value="" onchange="trading()" />
			                        </div>
			                    </div>
			                	<div class="col-md-2 col-lg-1">
			                        <div class="form-group">
			                            <label class="control-label">보유일</label>
			                            <input type="text" class="form-control" id="hold_day" placeholder="자동계산"/>
			                        </div>
			                    </div>
			                    <div class="col-md-2 col-lg-2">
			                        <div class="form-group">
			                            <label class="control-label">보유수량</label>
			                            <input type="text" class="form-control" id="hold_quantity" numberonly="true" placeholder="단위(개)" />
			                        </div>
			                    </div>	
			                </div>

			                <div class="row">
			                    <div class="col-md-2 col-lg-2">
			                        <div class="form-group">
			                            <label class="control-label">매수가</label>
			                            <input type="text" class="form-control" id="buy_price" numberonly="true" placeholder="단위(원)" />
			                        </div>
			                    </div>
			                    <div class="col-md-2 col-lg-2">
			                        <div class="form-group">
			                            <label class="control-label">매도가</label>
			                            <input type="text" class="form-control" id="sell_price" numberonly="true" placeholder="단위(원)" />
			                        </div>
			                    </div>
			                    <div class="col-md-2 col-lg-3">
			                        <div class="form-group">
			                            <label class="control-label">손익금액</label>
			                            <input type="text" class="form-control" id="pro_loss_price" numberonly="true" placeholder="단위(원)" />
			                        </div>
			                    </div>
			                </div>
			                <button class="btn btn-primary btn-icon-split" id="save" style="float: right;">
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