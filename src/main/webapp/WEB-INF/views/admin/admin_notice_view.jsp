<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css" />
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */

    
    /* 사이드바 */
    .sidenav {
      background-color: #f1f1f1;
      position: fixed;
      width: 200px;
      height: 100%;
      margin-left: -20px;
      margin-top:50px;	
    }	
    /* 본문 */
    .page {
     margin-top:50px;
     margin-left: 250px;
    }
    
  

  </style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" >
  <div class="container-fluid">
    <div class="navbar-header">
  <a class="navbar-brand" href="admin">YolosAdmin</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="admin">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">공지사항<span class="caret"></span></a>
        <ul class="dropdown-menu">
      <li><a href="adminview">공지사항</a></li>
          <li><a href="adminnotice">공지사항등록</a></li>
        </ul>
      </li>
      <li><a href="#">고객관리</a></li>
    </ul>
  </div>
</nav>

<div class="container-fluid">

  	<!-- 사이드바 -->
    <nav class="col-sm-3 sidenav">
      <h4>고객 문의사항</h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">고객문의조회</a></li>
        <li><a href="#section2">신고내역조회</a></li>
        <li><a href="#section3">고객의한마디내역</a></li>
      </ul>
    </nav>
	<!-- 사이드바 끝 -->

	<!-- 본문 -->
    <div class="col-sm-9 page">
    <h2 style="text-align: center; font-family: 'jokerman'">YOLO 공지사항</h2>
    
    <div class="row" style="margin-top: 100px;">
    <div class="col-md-2">
    </div>
    <div class="col-md-8" >
   		<table class="table table-hover" >
  		<thead style="background-color: #d2d2d2;"  >
 			 <tr>
 			 <td>번호</td>
 			 <td>공지사항</td>
 			 <td>ID</td>
 			 <td>날짜</td>
 			 <td>조회수</td>
  			 </tr>
  		</thead>
  		<tbody>
  		
  		<c:forEach items="${alist}" var="dto">
  			 <tr>
 			 <td>${dto.anum }</td>
 			 <td><a href="admin_view?anum=${dto.anum }">${dto.atitle}</a></td>
  			 <td>${dto.aid }</td>
 			 <td>${dto.adate }</td>
 			 <td>${dto.ahit }</td>
  			 </tr>
  			 <tr>
  			 </c:forEach>
  		</tbody>
  	
		</table>
    </div>
    <div class="col-md-2"></div>
    </div>
    </div>
    <!-- 본문 끝 -->
 
</div>
</body>
</html>

