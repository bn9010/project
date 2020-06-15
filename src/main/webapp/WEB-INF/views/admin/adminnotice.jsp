<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="<c:url value="/resources/js/jquery-3.5.1.min.js"/>" charset="utf-8"></script>
  
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
	<h3 align="center">공지사항을 등록해주세요</h3>
	<div class="container">
	
	 
	  
<table class="table table-bordered" >
    <tbody>
     	 <form action="adminwrite" method="post">  
        	 <tr>
        		<th  style="text-align: center;">카테고리</th>
        		<td>
        		<select name="acategory" id="" style="width: 500px;">
        		<option>중요사항</option>
        		<option>이벤트</option>
        		</select>
        		</td>	
        	</tr>
            <tr>
                <th  style="text-align: center;">제목 </th>
                <td><input type="text" placeholder="제목을 입력하세요. " name="atitle" class="form-control"/></td>
            </tr>
            <tr style="height: 300px;">
                <th  style="text-align: center;">내용: </th>
                <td><textarea cols="10" placeholder="내용을 입력하세요. " name="acontent" class="form-control" style="height: 300px;"></textarea></td>
            </tr>

            
            <tr>
            <th style="text-align: center;">등록</th>
           <td style="float: left; margin-left: 400px;">
                       	
                    <input type="submit" value="등록" style="width: 50px;height:50px; border-radius: 5px; " />
                 	<input type="button" value="돌아가기" onclick="location.href='http://localhost:9000/one/admin'" style="width: 80px;height:50px; border-radius: 5px; "/>
              </td>   
            </tr>
        </form>
    </tbody>
</table>
</div>
	
    </div>
    <!-- 본문 끝 -->
 
</div>

</body>
</html>

