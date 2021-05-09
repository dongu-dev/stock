<!--
* File name : index.jsp
* Author : swm
* Date of issue : 2020.09.18
* Update of revision : 
-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
	  	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	 	<meta name="description" content="">
	 	<meta name="author" content="">
		<title>메인 페이지</title>
		
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		
		<jsp:include page="/WEB-INF/views/header.jsp" />
	</head>
	<body>
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
		
		          <!-- Content Row -->
		          <div class="row">
		
		            <!-- Earnings (Monthly) Card Example -->
		            <div class="col-xl-3 col-md-6 mb-4">
		              <div class="card border-left-primary shadow h-100 py-2">
		                <div class="card-body">
		                  <div class="row no-gutters align-items-center">
		                    <div class="col mr-2">
		                      <div class="font-weight-bold text-primary text-uppercase mb-1">종목 손익 조회</div>
		                      
		                      <div class="h5 mb-0 font-weight-bold text-gray-800">₩ 40,000</div>
		                    </div>
		                    <div class="col-auto">
		                      <i class="fas fa-won-sign fa-2x text-gray-300"></i>
		                    </div>
		                  </div>
		                </div>
		              </div>
		            </div>
		
		            <!-- Earnings (Monthly) Card Example -->
		            <div class="col-xl-3 col-md-6 mb-4">
		              <div class="card border-left-success shadow h-100 py-2">
		                <div class="card-body">
		                  <div class="row no-gutters align-items-center">
		                    <div class="col mr-2">
		                      <div class="font-weight-bold text-success text-uppercase mb-1">총 매매횟수</div>
		                      <div class="h5 mb-0 font-weight-bold text-gray-800">10 회</div>
		                    </div>
		                  </div>
		                </div>
		              </div>
		            </div>
		
		            <div class="col-xl-3 col-md-6 mb-4">
		              <div class="card border-left-info shadow h-100 py-2">
		                <div class="card-body">
		                  <div class="row no-gutters align-items-center">
		                    <div class="col mr-2">
		                      <div class="font-weight-bold text-info text-uppercase mb-1">총 누적된 투자금액</div>
		                      <div class="row no-gutters align-items-center">
		                        <div class="col-auto">
		                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">₩ 100,000</div>
		                        </div>
		                      </div>
 		                    </div>
		                    <div class="col-auto">
		                      <i class="fas fa-won-sign fa-2x text-gray-300"></i>
		                  	</div>
		                  </div>
		                </div>
		              </div>
		            </div>
		
		            <!-- Pending Requests Card Example -->
		            <div class="col-xl-3 col-md-6 mb-4">
		              <div class="card border-left-warning shadow h-100 py-2">
		                <div class="card-body">
		                  <div class="row no-gutters align-items-center">
		                    <div class="col mr-2">
		                      <div class="font-weight-bold text-warning text-uppercase mb-1">마지막 매수 또는 매도일</div>
		                      <div class="h5 mb-0 font-weight-bold text-gray-800">2020년 9월 17일</div>
		                    </div>
		                    <div class="col-auto">
		                      <i class="fas fa-comments fa-2x text-gray-300"></i>
		                    </div>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		
		          <!-- Content Row -->
		
		          <div class="row">
		
		            <!-- Area Chart -->
		            <div class="col-xl-8 col-lg-7">
		              <div class="card shadow mb-4">
		                <!-- Card Header - Dropdown -->
		                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
		                  <h6 class="m-0 font-weight-bold text-primary">월간 수익률</h6>
		                </div>
		                <!-- Card Body -->
		                <div class="card-body">
		                  <div class="chart-area">
		                    <canvas id="weekAreaChart"></canvas>
		                  </div>
		                </div>
		              </div>
		            </div>
		
		            <!-- Pie Chart -->
		            <div class="col-xl-4 col-lg-5">
		              <div class="card shadow mb-4">
		                <!-- Card Header - Dropdown -->
		                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
		                  <h6 class="m-0 font-weight-bold text-primary">투자 비중</h6>
		                </div>
		                <!-- Card Body -->
		                <div class="card-body">
		                  <div class="chart-pie pt-4 pb-2">
		                    <canvas id="myPieChart"></canvas>
		                  </div>
		                  <div class="mt-4 text-center small">
		                    <span class="mr-2">
		                      <i class="fas fa-circle text-primary"></i> Direct
		                    </span>
		                    <span class="mr-2">
		                      <i class="fas fa-circle text-success"></i> Social
		                    </span>
		                    <span class="mr-2">
		                      <i class="fas fa-circle text-info"></i> Referral
		                    </span>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		
		          <!-- Content Row -->
		          <div class="row">
		
		            <!-- Area Chart -->
		            <div class="col-xl-8 col-lg-7">
		              <div class="card shadow mb-4">
		                <!-- Card Header - Dropdown -->
		                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
		                  <h6 class="m-0 font-weight-bold text-primary">월간 수익률</h6>
		                </div>
		                <!-- Card Body -->
		                <div class="card-body">
		                  <div class="chart-area">
		                    <canvas id="monthAreaChart"></canvas>
		                  </div>
		                </div>
		              </div>
		            </div>
		
		            <div class="col-xl-4 col-lg-5">
		
		              <!-- Illustrations -->
		              <div class="card shadow mb-4">
		                <div class="card-header py-3">
		                  <h6 class="m-0 font-weight-bold text-primary">내가 투자한 종목 TOP5 현재가 보러가기</h6>
		                </div>
		                <div class="card-body">
		                  	<a target="_blank" rel="nofollow" href=""></a>
		                </div>
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
		
		  <!-- Scroll to Top Button-->
		  <a class="scroll-to-top rounded" href="#page-top">
		    <i class="fas fa-angle-up"></i>
		  </a>
  
		  <jsp:include page="/WEB-INF/views/footerJs.jsp" />
	</body>
</html>