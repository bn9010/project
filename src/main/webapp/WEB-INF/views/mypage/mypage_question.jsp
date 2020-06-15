<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage.css" />
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
</head>
<body>
<div class="row" id="title">
<div class="col-md-4"></div>
<div class="col-md-4" style="text-align: center; margin-top: 50px;">
<a href="../one" class="headera" style="font-size: 22px;">YOLO의 레시피</a>
</div>
<div class="col-md-4" style="text-align: center; margin-top: 50px;">
<a href="mypage" class="diva" >My페이지</a>
<a href="logout" class="diva" style="margin-left: 15px;">로그아웃</a>
</div>
</div>
<div class="row">
<div class="col-md-3">
<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">마이페이지 Menu</h3>
  </div>
  <ul class="list-group">
  <li class="list-group-item"><a href="mypage">My홈</a></li>
   <li class="list-group-item"><a href="mypagemodify">회원가입수정</a></li>
   <li class="list-group-item"><a href="mypagequ">문의내역</a></li>
   
  </ul>
</div>
</div>
<div class="col-md-9" style="height: 700px; background-color: #fff">
	<table class="table" >
	<thead>
      	<tr>
      	<th style="border-bottom: 1px solid;">
      	
      	<a href="mypagequ" ><button type="button" class="btn btn-default">문의하기</button></a>
      	<a href="mypagequ2" ><button type="button" class="btn btn-danger">레시피신고</button></a>
      	</th>
      	</tr>
      	</thead>
 	<tbody>
 	<tr>
 	<th style="text-align: center;">
 	<img src="${pageContext.request.contextPath}/resources/images/questionmark.jpg">
 	<h1>YOLO에 궁금하신 사항은 언제든 문의하세요!</h1>
 	<button class="btn btn-success btn-lg" onclick="location.href='mypagelnquire'">등록하기</button>
 	</th>
 	</tr>
 	</tbody>
 	</table>
</div>
</div>
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