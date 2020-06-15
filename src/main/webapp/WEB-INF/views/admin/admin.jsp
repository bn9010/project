<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css" />
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
    <a class="navbar-brand" href="./" style="float: right;">메인으로돌아가기</a>
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
    <div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4">
	<br /><br /><br /><br /><br />
    </div>
    <div class="col-md-4"></div>
    </div>
    	<div class="row">
   	<div class="col-md=4">
    <div class="one" style="border: 2px solid; float: left; margin-left: 150px; padding: 10px; text-align: center; border-radius: 30px; background-color: #D2D2D2;  ">
    <span class="glyphicon glyphicon-user" style="font-size: 30px; float: left; "></span>
    <h4 style="float: left; color: #fff; text-align: center;">Yolo의 총 회원</h4><br></br>
    <p > 20명 입니다.</p>
    </div>
    </div>
    <div class="col-md=4">
     <div class="two" style="border: 2px solid; float: left; margin-left: 230px; padding: 10px; text-align: center; border-radius: 30px; background-color: #D2D2D2; ">
    <span class="glyphicon glyphicon-cutlery" style="font-size: 30px; float: left;" ></span>
    <h4 style="float: left; margin-left: 3px; color: #fff;  text-align: center;" align="center">레시피 총 개수</h4>
    <p ><strong>${cnt }</strong>개 입니다.</p>
      </div>
    </div>
    <div class="col-md=4">
     <div class="three" style="border: 2px solid; float: left; margin-left: 230px; padding: 10px; text-align: center; border-radius: 30px;background-color: #D2D2D2; ">
    <span class="glyphicon glyphicon-pencil" style="font-size: 30px; float: left; "></span>
    <h4 style="float: left; margin-left: 2px; color: #fff; text-align: center; " align="center">게시판 총 개수</h4>
    <p ><strong>${cnt2 }</strong>개 입니다.</p>
    </div>
    	</div>
    </div>
    
    <div class="row" style="margin-top: 50px;">
	<div class="col-md-1"></div>
    <div class="col-md-9" >
   		<table class="table table-hover" >
  		<thead style="background-color: #d2d2d2; "  >
 			 <tr>
 			 <td>ID</td>
 			 <td>NAME</td>
 			 <td>Login</td>
  			 </tr>
  		</thead>
  		<tbody>
  			 <tr>
 		
  			 <tr>
 			
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

