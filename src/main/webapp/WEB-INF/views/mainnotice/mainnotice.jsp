<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YOLO의 공지사항</title>
 <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.5.1.min.js"/>" charset="utf-8"></script>

<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/babfb06f19.js" crossorigin="anonymous"></script>

</head>
<body style="background-color: #F1F1F1;">

<!-- Header -->
<header id="header">
	<div class="inner">
		<div class="row">
		<div class="col-md-2">
			<a href="./" class="logo" style="font-family:sans-serif; font-size: 22px;">YOLO<i class="fas fa-hamburger"></i>RECIPE</a>
		</div>
                   
		<div class="col-md-8" align="center">
			<form action="search">
				<input type="text" placeholder="Recipe Search" name="sk" style="width: 350px; height: 40px; float:left; color: black; margin-left: 130px;"> 
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
               
                <h1>YOLO의 공지사항</h1>
                
            </header>
         
      	
      	</div>
      	</section>
      
      <div class="row">
      <div class="col-md-2"></div>
      <div class="col-md-7">
        <div class="container" style="background-color: #fff; margin-bottom: 15px; margin-top: 15px;">
      	<table class="table table-hover">
      	<thead>
      	<tr>
      	<th>번호</th>
      	<th>제목</th>
      	<th>작성자</th>
      	<th>날짜</th>
      	<th>조회수</th>
      	</tr>
      	</thead>
      	<tbody>
      	<c:forEach items="${alist}" var="dto">
  			 <tr>
 			 <td>${dto.anum }</td>
 			 <td><a href="mainview?anum=${dto.anum }">${dto.atitle}</a></td>
  			 <td>${dto.aid }</td>
 			 <td>${dto.adate }</td>
 			 <td>${dto.ahit }</td>
  			 </tr>
  			 <tr>
  			 </c:forEach>
      	</tbody>
      	</table>
      	
      
         </div>
</div>
   
      <div class="col-md-3"></div>
      </div>


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