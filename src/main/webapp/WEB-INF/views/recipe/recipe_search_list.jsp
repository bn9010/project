<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YOLO의레시피</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/hover.css" />
<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js" />"></script>

<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/babfb06f19.js" crossorigin="anonymous"></script>

</head>
<body>

<!-- Header -->
<header id="header">
	<div class="inner">
		<div class="row">
		<div class="col-md-2">
			<a href="./" class="logo" style="font-family:sans-serif; font-size: 22px;">YOLO<i class="fas fa-hamburger"></i>RECIPE</a>
		</div>
                   
		<div class="col-md-8" align="center">
			<form action="search">
				<input type="text" placeholder="${sk }" name="sk" style="width: 350px; height: 40px; float:left; color: black; margin-left: 130px;"> 
				<input type="submit" value=" " style="width: 50px; height: 40px; border-radius: 5px; float: left; margin-left: 5px; background-image: url('${pageContext.request.contextPath}/resources/images/search.jpg'); ">
			</form>
		</div>
	
		<div class="col-md-2">
		<nav id="nav"> 
			<c:if test="${empty sessionScope.userId }">
				<a href="user/login">로그인</a>
			</c:if>
			<c:if test="${not empty userId }">
				<a href="mypage">${userId }</a>
			</c:if>
			<c:if test="${not empty sessionScope.userId }">
				<a href="../login/logoutProc">logout</a>
			</c:if>
			<a href="user/register">회원가입</a> 
		</nav>
		</div>
		</div>

	<div class="row">
		<div class="col-md-12">
		<ul style="font-size: 22px;">
			<li><a href="./" >홈</a></li>
		</ul>
		<ul style="font-size: 22px; margin-left: 110px;">
			<li><a href="mainnotice">공지사항</a></li>
		</ul> 
 		<ul style="font-size: 22px; margin-left: 110px;">
 			<li><a href="recipe">레시피</a></li>
		</ul>
		<ul style="font-size: 22px; margin-left: 110px;">
			<li><a href="notice">게시판</a></li>
		</ul>
		<ul style="font-size: 22px; margin-left: 110px;">
			<li><a href="chef">셰프</a></li>
		</ul>
		</div>
	</div>
</div>
</header>

<!-- Banner -->
<section id="banner">
	<div class="inner">
		<header>
			<h1>레시피 검색 결과</h1>
			<h2 style="color: #fff">총 ${cnt }개의 맛있는 레시피가 있습니다.<h2>
		</header>
	</div>
</section>

<!-- 최신순,정렬순  -->
<div align="right" style="margin-right: 300px;">
	<nav>
		<ul class="pagination">
			<li>
				<c:if test="${order!='date' }">
					<a href="search?order=date&sk=${sk }" aria-label="First" style="color: #289F5D;  
					background-color: transparent; font-family: sans-serif; border: 1px solid #289F5D;">
					<span aria-hidden="true">최신순</span>
					</a>
				</c:if>
				<c:if test="${order=='date' }">
					<a aria-label="First" style=" font-family: sans-serif; 
					color: #ffffff; background-color: #289F5D; border: 1px solid #289F5D;">
					<span aria-hidden="true">최신순</span>
					</a>
				</c:if>
			</li>
			<li>
			<c:if test="${order!='hit' }">
				<a href="search?order=hit&sk=${sk }" aria-label="First" style="color: #289F5D; 
				background-color: transparent; font-family: sans-serif; border: 1px solid #289F5D;">
				<span aria-hidden="true">조회순</span>
				</a>
			</c:if>
			<c:if test="${order=='hit' }">
				<a aria-label="First" style=" font-family: sans-serif; 
				color: #ffffff; background-color: #289F5D; border: 1px solid #289F5D;">
				<span aria-hidden="true">조회순</span>
				</a>
			</c:if>
			</li>
		</ul>
	</nav>
</div>

<!-- 레시피 리스트  -->
<div class="row">
<div class="col-md-2"></div>
<div class="col-md-8" style="background-color: #fff; margin-top: 15px; margin-bottom: 15px;">
<div class="wrapper" >
	<c:forEach items="${rlist }" var="dto">
		<div class="item">
		    <a href="recipesee?rnum=${dto.rnum }">
				<div class="polaroid">
					<img style="width: 300px; height: 300px" 
					src="${pageContext.request.contextPath}/resources/images/rimg/${dto.rfilesrc }">
					<div class="caption" style="font-size: large;">${dto.rtitle } <br /> By ${dto.rname }</div>
		    	</div></a>
		</div>
	</c:forEach>
</div>
</div>
<div class="col-md-2">	</div>
</div>

<!-- 페이지 -->
<c:if test="${searchVo.totPage>1 }">
<div class="row" align="center">
	<div class="col-md-2"></div>
	<div class="col-md-7">
		<nav>
			<ul class="pagination">
				<c:if test="${searchVo.page>1 }">
					<li>
						<a href="recipe?page=1" aria-label="First" 
						style="font-family: sans-serif; color: #289F5D;">
						<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
					<li>
						<a href="recipe?page=${searchVo.page-1 }" aria-label="Previous" 
						style="font-family: sans-serif; color: #289F5D;">
						<span aria-hidden="true">&lt;</span>
						</a>
					</li>
				</c:if>
				
				<c:forEach begin="${searchVo.pageStart }" end="${searchVo.pageEnd }" var="i">
					<c:choose>
						<c:when test="${i eq searchVo.page }">
							<li><a style="font-family: sans-serif; color: #289F5D;">${i }</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="recipe?page=${i }" style="font-family: sans-serif; color: #289F5D;">${i }</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
		
				<c:if test="${searchVo.totPage>searchVo.page }">
					<li>
						<a href="recipe?page=${searchVo.page+1 }" aria-label="Next" 
						style="font-family: sans-serif; color: #289F5D;">
						<span aria-hidden="true">&gt;</span>
						</a>
					</li>
					<li>
						<a href="recipe?page=${searchVo.totPage }" aria-label="Last" 
						style="font-family: sans-serif; color: #289F5D;">
						<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</c:if>
			</ul>
		</nav>
	</div>
	<a href="recipe_write_view"><button class="btn btn-default">레시피 만들기</button></a>
</div>
</c:if>

<div class="col-md-3"></div>

<!--하단부분  -->
     <div class="row" style="background-color: #289F5D; margin-bottom: 15px; margin-top: 15px;">
  <div class="col-md-4" align="center" style="color: #fff; margin-top: 35px; padding-bottom: 10px; padding-top: 10px;">
     <span>대표 : YOLO</span> <span> | </span>
          <span>E: YOLOby@yolo.com</span> <span> | </span>
          <span> F: 02-123-456</span> <span> | </span> <br>
       <span> | </span> <span>서울특별시 성동구 왕십리도선동 무학로2길 54</span><span> | </span>
          <p>문의전화(운영시간 평일 09:00~17:00) </p> 
          <p>서비스 이용문의 : 070-123-4567</p>
          <br />
          <p>(주)YOLOBYRECIPE<span> | </span>사업자등록번호 : 000-11-22222</p>
          

  </div>
  <div class="col-md-4" style="padding-bottom: 10px; padding-top: 10px; margin-top: 55px;" align="center">
  <h1 style="font-family: sans-serif; color: white;">YOLO<i class="fas fa-hamburger"></i>RECIPE</h1>
                 <a class="admin" href="adminlogin" style="color: #fff;">Admin</a>
      </div>
  <div class="col-md-4" style="padding-bottom: 10px; padding-top: 10px;" align="center">
  <form action="">
      <h3><strong style="color: floralwhite; display: block;  ">고객의 한마디</strong></h3>
      <textarea style="display: block; width: 400px; height: 150px; outline-style: double; outline-color: silver; color: black; margin-bottom: 5px;" placeholder="YOLO를 이용하시면서 불편하신 사항을 말씀해주세요"></textarea>	
      <input type="submit" value="의견제출" class="btn btn-default btn-lg btn-block" style="display: block; width: 400px; height:40px; border-radius: 30px;">
      </form>
      </div>
</div>

</body>
</html>