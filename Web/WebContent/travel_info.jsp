<%@page import="controller.MemberDTO"%>
<%@page import="controller.PlaceDTO"%>
<%@page import="controller.PlaceDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
		<title>차박 여행의 모든 것, CHAZA!</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>

		<style>
			hr{
				top: 2em;
				margin-bottom: 1em;
			}
 			h1{
				margin: 0.5em;
			}
			span{
				margin: 0.5em;
			}
		 
		</style>
</head>
	<body class="left-sidebar is-preload">
	<% 
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		%>
		<div id="page-wrapper">

			<!-- Header -->
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="#" id="logo">여행지정보</a></h1>
							</header>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="index.jsp">Home</a></li>
								<li><a href="places_cat.jsp">여행지정보</a></li>
								<li><a href="reviews_cat.jsp">여행후기</a></li>
							
								<li>
								<% if(info==null){ %>
									<a href="form_login.jsp">로그인</a>
								<% } else { %>
									<li><a href="LogoutService">로그아웃</a></li>
									<li><a href="form_mypage.jsp">마이페이지</a></li>
									
								<% } %>	
							</ul>
						</nav>

				</div>

			<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<div class="row gtr-200">
							<div class="col-4 col-12-mobile" id="sidebar">
								<hr class="first" />
								<section>
								
									<% request.getCharacterEncoding();
									String place_name=request.getParameter("name"); %>
									
									<% PlaceDAO dao= new PlaceDAO();
									PlaceDTO placedto = dao.getplace(place_name);
									System.out.print(place_name);
							         	%>
										<section style="margin-bottom:0em;">
										<header>
											<h3>여행지 별점: <%=placedto.getPlace_score()%></h3>
										
										<hr><br><br>
											<h3>지도보기</h3>
										</header>
											<div>
											<a href=# class="button" onclick="javascript_:window.open('placeMap.jsp','pop', 'menubar=no,status=no,scrollbars=no,resizable=no ,width=1200px,height=800px,top=100,left=450'); return false;" style ="font-weight:bold;font-size:20px;padding-left:2em;padding-right:2em;letter-spacing:1.2px;background:#32BEBE">Click!</a>
											</div>				
									</section>
								<%-- 	<header>
										<h3>여행지 별점: <%=placedto.getPlace_score()%></h3>
										<br>
										<h3>차박 여행지 정보</h3>
										<br>
										<h5>
										<%=placedto.getContents() %>
									</h5>

									</header> --%>
							
									
									
									
									
									
									<hr>
									<br><br>
									<h1>주소</h1>
									
									<span><%=placedto.getPlace_addr() %></span>
									<br><br>
									<h1>주변 공중화장실</h1>
									
									<span><%=placedto.getToilet() %></span>
									<br><br>
									<h1>주변 개수대</h1>
									
									<span><%=placedto.getSink() %></span>
									<br><br>
									<h1>주변 수돗물</h1>
									
									<span><%=placedto.getWater() %></span>
									<br> 
									
								</section>
								
								<hr />
	<!-- 							<section>
										<header>
											<h3>차박 여행지 해시태그</h3>
										</header>
										<p>
										
										<div class="filebox"> 
											<label for="ex_file">#관광지</label>
											<label for="ex_file">#생태관광지</label>
											<label for="ex_file">#소선암자연휴양림</label>
											<label for="ex_file">#자연</label>
											<label for="ex_file">#자연휴양림</label>
											<label for="ex_file">#충청권</label>
										
										</div>
											
										</p>
										
									</section>
								 -->
									
							</div>
							<div class="col-8 col-12-mobile imp-mobile" id="content">
								<article id="main">
									<header>
										<h2><a href="#"><%=place_name %></a></h2>
										
										<hr>
									</header>
									<a href="#" class="image featured"><img src="<%=placedto.getPlace_image()%>" alt="" /></a>
									
										<section>
									
										<h3>차박 여행지 정보</h3>
										<br>
										<h5>
										<%=placedto.getContents() %>
									</h5>

									</section>
									
								<!-- 	<section>
										<header>
										
											<h3>지도보기</h3>
										</header>
										<img src="images/pic02.jpg" alt="" />
										
									</section> -->
								</article>
							</div>
						</div>
						<footer>
								<center>
								<a href="places_cat.jsp" class="button">목록으로</a>
								</center>
							</footer>
						<hr />
						<div class="row">
							<article class="col-4 col-12-mobile special">
								

							

							

								

							

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>