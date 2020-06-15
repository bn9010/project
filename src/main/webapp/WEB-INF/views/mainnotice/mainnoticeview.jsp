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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/hover.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.5.1.min.js"/>" charset="utf-8"></script>
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
      	<div class="row" style="text-align: center;" align="center">

	<div class="col-md-2"></div>
	<div class="col-md-8" style="background-color: #fff; margin-bottom: 15px; margin-top: 15px;">
			
			<div class="form-group" align="center">
		  
              <label for="exampleFormControlInput1" style="font-size: 22px;">카테고리</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="acategory" placeholder="카테고리를입력해주세요." style="width: 500px;" readonly="readonly" value="${aview.acategory }">
          </div>	
		   <div class="form-group" align="center">
		  
              <label for="exampleFormControlInput1" style="font-size: 22px;">제목</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="atitle" placeholder="제목을 작성해주세요." style="width: 500px;" readonly="readonly" value="${aview.atitle}">
          </div>
          
          
        <div class="form-group" align="center">
            <label for="exampleFormControlInput1" style="font-size: 22px;">작성자</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="ADMIN" style="width: 500px;" readonly="readonly">
          </div>
          <div class="form-group" align="center">
            <label for="exampleFormControlTextarea1" style="font-size: 22px;">내용</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" name="acontent" rows="10" style="width: 500px;" readonly="readonly">${aview.acontent}</textarea>
          </div>

      <button type="button" class="btn btn-info" onclick="location.href='http://localhost:9000/one/mainnotice'" style=" margin-left: 20px;">돌아가기</button>
     </div>
     
     <div class="col-md-2"></div>
     </div>
     	<!-- 댓글  -->
  </div>
  <div class="row" style="margin-top: 15px; margin-bottom: 15px;">
	<div class="col-md-2"></div>
	<div class="col-md-8" style="background-color: #fff;">
		<div style="background-color: #fff; padding: 20px 30px 30px;">
		<div style="border-bottom: 1px solid lightgray;">
			<label style=""><h3 class="nanum"><strong>댓글 </strong></h3></label>


		</div>
		<!-- 댓글 리스트  -->
		<c:forEach items="${mreply1 }" var="mrpl">
		<c:set value="${mrpl.mrindent }" var="endIndent" />
		<div class="mreply-list" style="border-bottom: 1px solid lightgray;">
		<c:forEach begin="1" end="${mrpl.mrindent }" var="cnt">
		<c:if test="${cnt eq endIndnet }">
		</c:if>
		</c:forEach>
		<div class="profile-body">
		<h4 class="profile-hedaing">
		<b class="info_name">${mrpl.mrid }</b>
		<fmt:formatdate value="${mrpl.mrdate }" pattern="yyyy-MM-dd hh:mm " />
				<span>|</span>
				<a href="mreply_delete?mrnum=${mrpl.mrnum }&anum=${mrpl.anum }">삭제</a>
		</h4>
		${mrpl.mrcontent }
		</div>
		</div>
		</c:forEach>
		
		
		<div>
	<form action="mreply" style="text-align: center; padding-top:20px; padding-bottom: 20px;">
		<input type="hidden" name="anum" value="${aview.anum}" />
		<textarea name="mrcontent" id="pcontent" cols="30" rows="3" style="width:550px; height:30px;  vertical-align:middle; float: left;" placeholder="댓글을 입력해주세요"></textarea>
		<input type="submit" class="btn btn-default" style="width:80px; height:30px; float: left;" value="등록" />
	</form>
</div>
  </div>
  </div>
  <div class="col-md-2"></div>
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