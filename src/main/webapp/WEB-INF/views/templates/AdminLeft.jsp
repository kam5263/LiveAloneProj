<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Admin Dashboard</title>
	<!-- Custom fonts for this template-->
	<link href="<c:url value='/css/admin/all.min.css'/>" rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
		rel="stylesheet">
	<!-- Custom styles for this template-->
	<link href="<c:url value='/css/admin/sb-admin-2.css'/>" rel="stylesheet">
	<!-- Custom styles for this page -->
    <link href="<c:url value='/css/admin/dataTables.bootstrap4.css'/>" rel="stylesheet">
</head>
<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
		<!-- Sidebar -->
		<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
		    <!-- Sidebar - Brand -->
		    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<c:url value='/Admin/AdminHome.do'/>">
		        <div class="sidebar-brand-icon rotate-n-15">
		            <i class="fas fa-laugh-wink"></i>
		        </div>
		        <div class="sidebar-brand-text mx-3">Admin</div>
		    </a>
		
		    <!-- Divider -->
		    <hr class="sidebar-divider my-0">
		
		    <!-- Nav Item - Dashboard -->
		    <li class="nav-item active">
		        <a class="nav-link" href="<c:url value='/Admin/AdminHome.do'/>">
		            <i class="fas fa-fw fa-tachometer-alt"></i>
		            <span>Dashboard</span></a>
		    </li>
		
		    <!-- Divider -->
		    <hr class="sidebar-divider">
		
		    <!-- Heading -->
		    <div class="sidebar-heading">
		        information
		    </div>
		
		    <!-- Nav Item - Member Collapse Menu -->
		    <li class="nav-item">
		        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMember"
		            aria-expanded="true" aria-controls="collapseMember">
		            <i class="fas fa-fw fa-cog"></i>
		            <span>Member</span>
		        </a>
		        <div id="collapseMember" class="collapse" aria-labelledby="headingMember" data-parent="#accordionSidebar">
		            <div class="bg-white py-2 collapse-inner rounded">
		                <h6 class="collapse-header">member info:</h6>
		                <a class="collapse-item" href="<c:url value='/Admin/Member/Members.do'/>">회원 전체</a>
		                <a class="collapse-item" href="#">알러지</a>
		                <a class="collapse-item" href="#">동네</a>
		                <a class="collapse-item" href="#">좋아요</a>
		                <a class="collapse-item" href="#">팔로우</a>
		            </div>
		        </div>
		    </li>
		    <!-- Heading -->
		    <div class="sidebar-heading">
		        community
		    </div>
			<!-- Divider -->
		    <hr class="sidebar-divider">
		    <!-- Nav Item - Board Collapse Menu -->
		    <li class="nav-item">
		        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBoard"
		            aria-expanded="true" aria-controls="#collapseBoard">
		            <i class="fas fa-fw fa-wrench"></i>
		            <span>Board</span>
		        </a>
		        <div id="collapseBoard" class="collapse" aria-labelledby="headingBoard" data-parent="#accordionSidebar">
		            <div class="bg-white py-2 collapse-inner rounded">
		                <h6 class="collapse-header">community:</h6>
		                <a class="collapse-item" href="#">재료나눔</a>
		                <a class="collapse-item" href="#">신고사항</a>
		                <a class="collapse-item" href="#">나만의 레시피</a>
		                <a class="collapse-item" href="#">신고사항</a>
		            </div>
		        </div>
		    </li>
		
		    <!-- Divider -->
		    <hr class="sidebar-divider">
		
		    <!-- Heading -->
		    <div class="sidebar-heading">
		        Admin
		    </div>
		
		    <!-- Nav Item - Tips Collapse Menu -->
		    <li class="nav-item">
		        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTips"
		            aria-expanded="true" aria-controls="collapseTips">
		            <i class="fas fa-fw fa-folder"></i>
		            <span>Tip's</span>
		        </a>
		        <div id="collapseTips" class="collapse" aria-labelledby="headingTips" data-parent="#accordionSidebar">
		            <div class="bg-white py-2 collapse-inner rounded">
		                <h6 class="collapse-header">tip's board:</h6>
		                <a class="collapse-item" href="<c:url value='/Admin/Tip/Board.do'/>">목록</a>
		            </div>
		        </div>
		    </li>
		    
		    <!-- Nav Item - Statistics Collapse Menu -->
			<li class="nav-item">
		        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseStatistics"
		            aria-expanded="true" aria-controls="collapseStatistics">
		            <i class="fas fa-fw fa-chart-area"></i>
		            <span>Statistics</span>
		        </a>
		        <div id="collapseStatistics" class="collapse" aria-labelledby="headingStatistics" data-parent="#accordionSidebar">
		            <div class="bg-white py-2 collapse-inner rounded">
		                <h6 class="collapse-header">statistics:</h6>
		                <a class="collapse-item" href="#">통계1</a>
		                <a class="collapse-item" href="#">통계2</a>
		                <a class="collapse-item" href="#">통계3</a>
		            </div>
		        </div>
		    </li>
		
		    <!-- Divider -->
		    <hr class="sidebar-divider d-none d-md-block">
		
		    <!-- Sidebar Toggler (Sidebar) -->
		    <div class="text-center d-none d-md-inline">
		        <button class="rounded-circle border-0" id="sidebarToggle"></button>
		    </div>
			
		</ul>
		<!-- End of Sidebar -->