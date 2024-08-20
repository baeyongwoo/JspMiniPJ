<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link href="/css/style.css" rel="stylesheet">
<title>Admin - Dashboard</title>

<!-- Custom fonts for this template-->
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../css/sb-admin-2.min.css" rel="stylesheet">

<script type="text/javascript" src="/js/NationBoard.js"></script>


</head>

<body id="page-top">
	<!-- nav 시작 -->
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<div class="container">
			<a class="navbar-brand" href="/"> <img src="/img/logo.png"
				alt="Logo">
			</a>

			<div class="navbar-nav right">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="/logout.do">로그아웃</a>
					</li>

				</ul>
			</div>
		</div>
	</nav>
	<!-- nav 끝 -->
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar"
			style="background-color: green; background-image: linear-gradient(180deg, green 10%, #224abe 100%); background-size: cover;">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="/adminPage.do">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">Flower Admin</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="/adminPage.do"> <i class="fas fa-fw fa-tachometer-alt"></i>
					<span>Dashboard</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Interface</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed"
				href="/Userboardlist.do"> <i class="fas fa-fw fa-wrench"></i> <span>UserList</span>
			</a></li>

			<!-- Nav Item - Utilities Collapse Menu -->

			<li class="nav-item"><a class="nav-link collapsed"
				href="/adminboardlist.do"> <i class="fas fa-fw fa-wrench"></i>
					<span>BoardList</span>
			</a></li>
			<li class="nav-item"><a class="nav-link collapsed"
				href="/nationboardlist.do"> <i class="fas fa-fw fa-wrench"></i>
					<span>NationList</span>
			</a></li>


			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading"></div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-folder"></i> <span>Mail</span>
			</a>
				<div id="collapsePages" class="collapse"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Mail</h6>
						<a class="collapse-item" href="login.html">전체보내기</a> <a
							class="collapse-item" href="register.html">개인보내기</a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- content 시작 -->
    <form action="/nationRegister.do" method="post" enctype="multipart/form-data" onsubmit="return checkselect()">
        <div class="manu" style="text-align: center; padding: 50px;">
            <h1>나라 등록</h1>
            <div class="row">
                <div class="col-sm-6">
                    <label for="nname" class="form-label">나라이름</label>
                    <div class="form-floating mb-3 mt-3">
                        <input type="text" name="nname" id="title" placeholder="나라이름" required="required">
                    </div>
                    <label for="nlocation" class="form-label">대륙</label>
					<div class="form-floating mb-3 mt-3">
   						 <select name="nlocation" id="nlocation" class="form-select" required="required">
   						 
        					<option value="null">대륙선택</option>
        					<option value="Africa">아프리카</option>
        					<option value="Asia">아시아</option>
        					<option value="Europe">유럽</option>
        					<option value="North America">북아메리카</option>
        					<option value="South America">남아메리카</option>
        					<option value="Oceania">오세아니아</option>
    					</select>
					</div>


                    <label for="content" class="form-label">국가 정보:</label>
               		<textarea name="ninfo" id="content" rows="10" cols="60" placeholder="내용"></textarea>
                </div>
                <div class="col-sm-6">
                    <div id="uploadImgDiv">
                        <img src="img/logo.png" width="100%">
                        <input type="file" name="fimgname" onchange="setThumbnail(event);"/>
                    </div>
                </div>
                <div class="container d-flex justify-content-center">    
                    <button type="submit" value="등록" >등록</button>
                    <button type="reset" value="취소" onclick="resetImg(event)">취소</button>
                </div>
            </div>
        </div>
    </form>



	</div>
	<!-- content 끝 -->
	<footer class="container-fluid d-flex justify-content-center">
		<a href=".navbar" title="To Top"> <span
			class="glyphicon glyphicon-chevron-up"></span>
		</a>
		<p>&copy; WorldFlower All rights reserved.</p>
	</footer>






	<!-- End of Page Wrapper -->
	</div>


	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>



	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->

</body>

</html>