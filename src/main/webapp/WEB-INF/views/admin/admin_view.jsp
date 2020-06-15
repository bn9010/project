<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css" />
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   <!-- 공지사항삭제  -->
  <script type="text/javascript">
  function adelete(){
	  if (confirm("삭제하시겠어요?")) {
		  location.href = "http://localhost:9000/one/adelete?anum=${aview.anum}";
		 alert("삭제완료"); 
	}else{
		return false;
	}
	  
  }
  </script>
  	
  
  
  
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
  	<div class="row" style="text-align: center;">

	<div >
	<h3>공지사항</h3>
	
    
	
		
			
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
         <button type="button" class="btn_btn-info" onclick="location.href='http://localhost:9000/one/adminmodify?anum=${aview.anum}'" style="background-color: #fff; padding: 4px; border-radius: 3px;" >수정하기</button>
      	<input type="button" class="btn_btn-secondary" value="삭제" onclick="adelete()" style="background-color: #fff; margin-left: 20px;  padding: 4px; border-radius: 3px; "/>
     
     
      </div>
      
  </div>
  </div>
    <!-- 본문 끝 -->
 
</div>
</body>
</html>