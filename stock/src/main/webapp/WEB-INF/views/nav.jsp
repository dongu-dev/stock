<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("memberId");
%>
<script src="resources/js/member.js"></script>
<script src="resources/js/nav.js"></script>
<!-- Topbar -->
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

    <!-- Topbar Search -->
    <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
        <div class="input-group">
            <input type="text" class="form-control bg-light border-1 small" placeholder="종목 입력 후 돋보기 아이콘 클릭" aria-label="Search" aria-describedby="basic-addon2" id="stockSearchValue">
            <div class="input-group-append">
                <button class="btn btn-primary" type="button" onclick="stockSearch();">
               		<i class="fas fa-search fa-sm"></i>
                </button>
            </div>
        </div>
    </form>

    <!-- Topbar Navbar -->
    <ul class="navbar-nav ml-auto">

        <!-- Nav Item - User Information -->
        <li class="nav-item dropdown no-arrow">
        		<span><%=id%> 님</span>
           		<a href="javascript:void(0)" data-toggle="modal" data-target="#logoutModal" id="memberLogout" class="logoutTouch">
	                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400" ></i>
	            </a>
	            <!-- <a class="dropdown-item" href="#">
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
	            <div class="dropdown-divider"></div> -->
	            
        </li>
	</ul>
</nav>
<!-- End of Topbar -->