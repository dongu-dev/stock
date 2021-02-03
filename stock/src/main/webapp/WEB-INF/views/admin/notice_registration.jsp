<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--
* File name : footerJs.jsp
* Author : swm
* Date of issue : 2020.10.07
* Update of revision : 
-->

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
			<h1 class="h3 mb-2 text-gray-800">공지사항 등록</h1>
			<p class="mb-4"></p>
			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-body">
					<form action="notice_regist" method="post">
						<input type="text" class="form-control" name="notice_title" placeholder="제목을 입력하여 주세요" >
						<br><textarea class="form-control" name="notice_contents" rows="10" id="summernote"></textarea>
						<br>사용여부 : 
						<select style="width: 15%" name="use_yn">
							<option value="Y">Y</option>
							<option value="N">N</option>
						</select>
						<input type="submit" style="float: right;" class="btn btn-success" value="등록">
					</form>
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