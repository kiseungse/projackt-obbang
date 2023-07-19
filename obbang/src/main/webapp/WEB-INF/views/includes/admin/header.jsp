<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
<!-- Css Styles -->
<link rel="stylesheet" href="../resources/css/admin/main.css">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="../resources/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="../resources/css/themify-icons.css" type="text/css">
<link rel="stylesheet" href="../resources/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="../resources/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="../resources/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="../resources/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="../resources/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="../resources/css/style.css" type="text/css">
<link rel="stylesheet" href="../resources/css/main2.css" type="text/css">
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>

</head>
<body>

	<!-- Header Section Begin -->
	<header class="header-section">

		<div class="container">
			<div class="inner-header">
				<a href="/store/home"><img src="/resources/img/obbang.png"></a>
			</div>
		</div>
		<div class="nav-item">
			<div class="container">

				<nav class="nav-menu mobile-menu">
					<ul>
						<li><a href="/store/home">Home</a></li>
						<li><a href="/notice/noticelist">Notice</a></li>
						<li><a href="/member/logout.do">Logout</a>
						<li><a href="/admin/main">관리자 페이지</a></li>
					</ul>
				</nav>
				<div id="mobile-menu-wrap"></div>
			</div>
		</div>
	</header>


     <!-- contents-area -->
     <div class="admin_wrap">
         <!-- 네비영역 -->
         <div class="admin_navi_wrap">
	        <ul>
	            <li >
	                <a class="admin_list_01" href="/admin/storeEnroll">점포 등록</a>
	            </li>
	            <li>
	                <a class="admin_list_01" href="/admin/storeManage">점포 관리</a>
	            </li>
	            <lI>
	                <a class="admin_list_01" href="/admin/menuEnroll">상품 등록</a>                            
	            </lI>
	            <lI>
	                <a class="admin_list_01" href="/admin/menuManage">상품 관리</a>                            
	            </lI>
	            <lI>
	                <a class="admin_list_01" href="/admin/orderList">주문 현황</a>                            
	            </lI>
	                                                                                                       
	        </ul>
         </div>
      </div>   
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/jquery-ui.min.js"></script>	
<script src="/resources/js/jquery.countdown.min.js"></script>
<script src="/resources/js/jquery.nice-select.min.js"></script>
<script src="/resources/js/jquery.zoom.min.js"></script>
<script src="/resources/js/jquery.dd.min.js"></script>
<script src="/resources/js/jquery.slicknav.js"></script>
<script src="/resources/js/owl.carousel.min.js"></script>
<script src="/resources/js/main.js"></script>             
</body>             
</html>