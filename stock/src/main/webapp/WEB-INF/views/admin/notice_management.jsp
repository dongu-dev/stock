<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
		<meta charset="UTF-8">
		<title>공지사항 등록</title>
		
		<jsp:include page="/WEB-INF/views/header.jsp" />
		
		<script src="resources/js/admin.js"></script>
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
			<h1 class="h3 mb-2 text-gray-800">공지사항 관리</h1>
			<p class="mb-4"></p>
			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-body">
					<button class="btn btn-primary btn-icon-split" id="write" >
			           	<span class="text ">글쓰기</span>
			        </button>
			        &ensp;
			        <button class="btn btn-warning btn-icon-split" id="update">
			         	<span class="text ">수정</span>
			        </button>
			        &ensp;
			        <button class="btn btn-danger btn-icon-split" id="delete">
			           	<span class="text ">삭제</span>
			        </button>
			        <br><br>
				    <div class="table-responsive">
	                <table class="table table-bordered" id="dataTable" width="100%">
	                  <thead>
	                    <tr>
	                      <th style="width: 10%">번호</th>
	                      <th style="width: 75%">제목</th>
	                      <th style="width: 15%">조회수</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                    <tr>
	                      <td>1</td>
	                      <td>ㄱ</td>
	                      <td>30</td>
	                    </tr>
	                    <tr>
	                      <td>2</td>
	                      <td>ㅎ</td>
	                      <td>245</td>
	                    </tr>
	                    <tr>
	                      <td>3</td>
	                      <td>ㅋ</td>
	                      <td>22</td>
	                    </tr>
	                  </tbody>
	                </table>
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
  </div>
  <!-- End of Page Wrapper -->

  <jsp:include page="/WEB-INF/views/footerJs.jsp" />
  
</body>
</html>