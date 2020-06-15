<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YOLO의 레시피</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
<link href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/hover.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/recipe/carousel.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/recipe/recipe_view.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/topBtn.css" />
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.5.1.min.js" />"></script>

<script src="https://kit.fontawesome.com/babfb06f19.js" crossorigin="anonymous"></script>

<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<style>
.nanum{
font-family: 'arial', sans-serif;
}

.rinfo {
   text-align: center;
   font-style: italic;
   color: #999;
   font-size: 30px;
   width: 500px;
   margin-left: 30px;
}
</style>

<!-- 댓글 접기, 펼치기 script -->
<script type="text/javascript" language="JavaScript">
	function layer_toggle(obj) {
    if (obj.style.display == 'none') obj.style.display = 'block';
    else if (obj.style.display == 'block') obj.style.display = 'none';
}
</script>

<!-- 수정 버튼 script -->
<script>
	function recipe_modify() {
		location.href = "http://localhost:9000/one/recipe_modify?rnum=${rview.rnum }";
	}
</script>

<!-- 수정 버튼 script -->
<script type="text/javascript" language="javascript">
	function modify(){
		return confirm('레시피를 수정 하시겠습니까?')
	}
</script>

<!-- 삭제 버튼 script -->
<script type="text/javascript" language="javascript">
	function del(){
		return confirm('레시피를 삭제 하시겠습니까?')
	}
</script>

<!-- 댓글 삭제 버튼 script -->
<script type="text/javascript" language="javascript">
	function r_del(){
		return confirm('댓글을 삭제 하시겠습니까?')
	}
</script>

<!-- 댓글 수정 버튼 script -->
<script>
	function window_open(url) {
	    newPage=window.open(url);
	}
</script>

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
			<h2 style="color: #fff;">${rview.rname }님의 레시피</h2>
			<h1 style="color: #fff;">${rview.rtitle }</h1>
		</header>
	</div>
</section>

<!-- 대표 이미지, 소개, 인원, 시간, 난이도 -->
<div class="row" style="margin-top: 15px; margin-bottom: 15px;">
	<div class="col-md-2"></div>
	<div class="col-md-8" style="background-color: #fff; border: 1px solid lightgray; 
	padding: 15px 15px 30px 15px; display: inline-block;">
		<div style="margin-top: 15px; margin-bottom: 50px; display: inline-block;"> 
         <div style="display: inline-block; margin-left: 150px;">
            <img style="width: 500px; height: 500px; padding: 30px 20px 30px;"
            src="${pageContext.request.contextPath}/resources/images/rimg/${rview.rfilesrc }" >
         </div>
      </div>
		
		<div style="display: inline-block;">
			<p style="background-color: #4C4C4C; width: fit-content; color: #fff; 
         border-radius: 20px; padding: 3px 10px 3px 10px; text-align: right; margin-left: 50px;">
         <i class="fas fa-eye"></i>&nbsp;${rview.rhit }</p><br />
         <p class="rinfo">"&nbsp;&nbsp;${rview.rinformation }&nbsp;&nbsp;"</p>
         <br /><br />
	   		<table style="text-align: center; width: 400px; margin-left: auto; margin-right: auto;">
				<tr style="background-color: #fff; text-align: center; height: 50px;">
					<td><i class="fas fa-drumstick-bite" style="color:#289F5D; font-size:30px;"></i></td>
					<td><i class="fas fa-clock" style="color:#289F5D; font-size:30px;"></i></td>
					<td><i class="fas fa-utensils" style="color:#289F5D; font-size:30px;"></i></td>
				</tr>
				<tr style="background-color: #fff; text-align: center; height: 50px;">
					<td>${rview.rserves }</td>
					<td>${rview.rtime }</td>
					<td>${rview.rlevel }</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="col-md-2"></div>
</div>

<!-- 재료 -->
<div class="row" style="margin-top: 15px; margin-bottom: 15px;">
	<div class="col-md-2"></div>
	<div class="col-md-8" style="display: inline-block; background-color: #fff;
	 border: 1px solid lightgray; padding: 15px 15px 30px 15px;">
		<label style="margin-left: 10px;"><strong>[재료]</strong></label>
		<p class="nanum" style="text-align: center; font-size: 20px;">${rview.ringredients }</p>
	</div>
	<div class="col-md-2"></div>
</div>

<!-- step1 -->
<div class="row" style="margin-top: 10px; margin-bottom: 10px;">
	<div class="col-md-2"></div>
	<div class="col-md-8" style="display: inline-block; background-color: #fff;
	 border: 1px solid lightgray; padding: 15px 15px 30px 15px;">
		<label><h3 class="nanum"><strong style="color: #289F5D;">Step.1</strong></h3></label>
		<h4 class="nanum">&nbsp;${rview.step1 }</h4>
	</div>
	<div class="col-md-2"></div>
</div>
<!-- step2 -->
<c:if test="${rview.step2!=null }">
	<div class="row" style="margin-top: 10px; margin-bottom: 10px;">
		<div class="col-md-2"></div>
		<div class="col-md-8" style="display: inline-block; background-color: #fff;
		 border: 1px solid lightgray; padding: 15px 15px 30px 15px;">
			<label><h3 class="nanum"><strong style="color: #289F5D;">Step.2</strong></h3></label>
			<h4 class="nanum">&nbsp;${rview.step2 }</h4>
		</div>
		<div class="col-md-2"></div>
	</div>
</c:if>
<!-- step3 -->
<c:if test="${rview.step3!=null }">
	<div class="row" style="margin-top: 10px; margin-bottom: 10px;">
		<div class="col-md-2"></div>
		<div class="col-md-8" style="display: inline-block; background-color: #fff;
		 border: 1px solid lightgray; padding: 15px 15px 30px 15px;">
			<label><h3 class="nanum"><strong style="color: #289F5D;">Step.3</strong></h3></label>
			<h4 class="nanum">&nbsp;${rview.step3 }</h4>
		</div>
		<div class="col-md-2"></div>
	</div>
</c:if>
<!-- step4 -->
<c:if test="${rview.step4!=null }">
	<div class="row" style="margin-top: 10px; margin-bottom: 10px;">
		<div class="col-md-2"></div>
		<div class="col-md-8" style="display: inline-block; background-color: #fff;
		 border: 1px solid lightgray; padding: 15px 15px 30px 15px;">
			<label><h3 class="nanum"><strong style="color: #289F5D;">Step.4</strong></h3></label>
			<h4 class="nanum">&nbsp;${rview.step4 }</h4>
		</div>
		<div class="col-md-2"></div>
	</div>
</c:if>
<!-- step5 -->
<c:if test="${rview.step5!=null }">
	<div class="row" style="margin-top: 10px; margin-bottom: 10px;">
		<div class="col-md-2"></div>
		<div class="col-md-8" style="display: inline-block; background-color: #fff;
		 border: 1px solid lightgray; padding: 15px 15px 30px 15px;">
			<label><h3 class="nanum"><strong style="color: #289F5D;">Step.5</strong></h3></label>
			<h4 class="nanum">&nbsp;${rview.step5 }</h4>
		</div>
		<div class="col-md-2"></div>
	</div>
</c:if>
<!-- step6 -->
<c:if test="${rview.step6!=null }">
	<div class="row" style="margin-top: 10px; margin-bottom: 10px;">
		<div class="col-md-2"></div>
		<div class="col-md-8" style="display: inline-block; background-color: #fff;
		 border: 1px solid lightgray; padding: 15px 15px 30px 15px;">
			<label><h3 class="nanum"><strong style="color: #289F5D;">Step.6</strong></h3></label>
			<h4 class="nanum">&nbsp;${rview.step6 }</h4>
		</div>
		<div class="col-md-2"></div>
	</div>
</c:if>

<!-- 팁 -->
<div class="row" style="margin-top: 10px; margin-bottom: 10px;">
	<div class="col-md-2"></div>
	<div class="col-md-8" style="display: inline-block; background-color: #fff;
	 border: 1px solid lightgray; padding: 15px 15px 30px 15px;">
		<label><h3 class="nanum"><strong style="color: #289F5D;">요리팁</strong></h3></label>
		<h4 class="nanum">&nbsp;${rview.rtip }</h4>
	</div>
	<div class="col-md-2"></div>
</div>
	
<!-- 완성 사진 -->
<c:if test="${rview.cfilesrc1!=null }">
<nav style="width: 1300px; margin: 0 auto;" class="navbar navbar-ct-transparent" role="navigation-demo" id="demo-navbar">
	<div id="carousel">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <div class="carousel slide" data-ride="carousel">

              <!-- Indicators -->
              <ol class="carousel-indicators">
              	<c:if test="${rview.cfilesrc2!=null }">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                </c:if>
                <c:if test="${rview.cfilesrc2!=null }">
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                </c:if>
                <c:if test="${rview.cfilesrc3!=null }">
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </c:if>
                <c:if test="${rview.cfilesrc4!=null }">
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                </c:if>
              </ol>

              <!-- Wrapper for slides -->
              <div class="carousel-inner">
                <div class="item active">
                  <img src="${pageContext.request.contextPath}/resources/images/rimg/${rview.cfilesrc1 }" alt="Awesome Image">
                </div>
                <c:if test="${rview.cfilesrc2!=null }">
                <div class="item">
                  <img src="${pageContext.request.contextPath}/resources/images/rimg/${rview.cfilesrc2 }" alt="Awesome Image">
                </div>
                </c:if>
                <c:if test="${rview.cfilesrc3!=null }">
                <div class="item">
                  <img src="${pageContext.request.contextPath}/resources/images/rimg/${rview.cfilesrc3 }" alt="Awesome Image">
                </div>
                </c:if>
                <c:if test="${rview.cfilesrc4!=null }">
                <div class="item">
                  <img src="${pageContext.request.contextPath}/resources/images/rimg/${rview.cfilesrc4 }" alt="Awesome Image">
                </div>
                </c:if>
              </div>

              <!-- Controls -->
              <c:if test="${rview.cfilesrc2!=null }">
              <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                <span class="fa fa-angle-left"></span>
              </a>
              <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                <span class="fa fa-angle-right"></span>
              </a>
              </c:if>
        </div>
    	</div>

	</div>
</nav>
</c:if>




<!-- 수정, 삭제(권한 추가 후 수정 예정) -->
<div class="row" style="margin-top: 10px; margin-bottom: 10px;">
	<div class="col-md-3"></div>
	<div class="col-md-6" align="center">
		<a class="btn btn-default" href="recipe_modify?rnum=${rview.rnum }" onclick="return modify();">수정</a>
		<a class="btn btn-default" href="rdelete?rnum=${rview.rnum }" onclick="return del();">삭제</a>
	</div>
	<div class="col-md-3"></div>
</div>


	
	
	
<!-- 댓글 -->
<div class="row" style="margin-top: 15px; margin-bottom: 15px;">
	<div class="col-md-2"></div>
	<div class="col-md-8" style="background-color: #fff;
	 border: 1px solid lightgray; padding: 15px 15px 30px 15px;">
		<div style="background-color: #fff; padding: 20px 30px 30px;">
		<div style="border-bottom: 1px solid lightgray;">
			<label style=""><h3 class="nanum"><strong>댓글 ${rcnt }</strong></h3></label>

		</div>
	
<!-- 댓글 리스트(5번까지) --> <br />
<c:forEach items="${reply1 }" var="rp1">
<c:set value="${rp1.pindent}" var="endIndent" />
	<div class="reply-list" style="border-bottom: 1px solid lightgray;">
		<c:forEach begin="1" end="${rp1.pindent }" var="cnt">
				<c:if test="${cnt eq endIndent }">
					<div class="profile-left">
					<img class="reply" src="resources/images/rimg/arrow.png" />
					</div>
				</c:if>
			</c:forEach>
		<div class="profile-left">
			<a href="#"><img class="profile-pic" 
			src="${pageContext.request.contextPath}/resources/images/gimgeran.jpg" /></a>
		</div>
		<div class="profile-body">
			<h4 class="profile-heading">
				<b class="info_name">${rp1.pname }</b>
				<fmt:formatDate value="${rp1.pdate }" pattern="yyyy-MM-dd hh:mm"/>
				
				<c:if test="${sessionScope.userId==rview.rid }">
				<span>|</span>
				<a onclick="win_op('http://localhost:9000/one/rReply_reply_view?pnum=${rp1.pnum }&rnum=${rp1.rnum }','','250','250','yes')">답글</a>
				</c:if>
				
				<c:if test="${sessionScope.userId==rp1.pid }">
				<span>|</span>
				<a href="rReply_delete?pnum=${rp1.pnum }&rnum=${rp1.rnum }" onclick="return r_del();">삭제</a>
				</c:if>
			</h4>
			${rp1.pcontent }
		</div>
	</div>
	<br />
</c:forEach>

<!-- 댓글 리스트(5번 이후) -->
<c:if test="${rcnt > 5 }">
	<div id=more01a style=display:block align="center"><p><a href=# class="btn btn-default" style="width: 400px;"
	onclick="layer_toggle(document.getElementById('more01a')); layer_toggle(document.getElementById('more01b'));return false;">전체보기</a></p></div>
	<div id=more01b style=display:none>
	
	<c:forEach items="${reply2 }" var="rp2">
	<c:set value="${rp2.pindent}" var="endIndent" />
		<div class="reply-list" style="border-bottom: 1px solid lightgray;">
			<c:forEach begin="1" end="${rp2.pindent }" var="cnt">
					<c:if test="${cnt eq endIndent }">
						<div class="profile-left">
						<img class="reply" src="resources/images/rimg/arrow.png" />
						</div>
					</c:if>
				</c:forEach>
			<div class="profile-left">
				<a href="#"><img class="profile-pic" 
				src="${pageContext.request.contextPath}/resources/images/gimgeran.jpg" /></a>
			</div>
			<div class="profile-body">
				<h4 class="profile-heading">
					<b class="info_name">${rp2.pname }</b>
					<fmt:formatDate value="${rp2.pdate }" pattern="yyyy-MM-dd hh:mm"/>
					
					<c:if test="${sessionScope.userId==rview.rid }">
					<span>|</span>
					<a onclick="win_op('http://localhost:9000/one/rReply_reply_view?pnum=${rp2.pnum }&rnum=${rp2.rnum }','','250','250','yes')">답글</a>
					</c:if>
					
					<c:if test="${sessionScope.userId==rp2.pid }">
					<span>|</span>
					<a href="rReply_delete?pnum=${rp1.pnum }&rnum=${rp1.rnum }" onclick="return r_del();">삭제</a>
					</c:if>
				</h4>
				${rp2.pcontent }
			</div>
		</div>
		<br />
	</c:forEach>
	
	<div id=more01a style=display:block align="center">
	<p><a href=# class="btn btn-default" style="width: 400px;"
	onclick="layer_toggle(document.getElementById('more01a')); layer_toggle(document.getElementById('more01b'));return false;">줄여보기</a></p>
	</div>
	</div>
</c:if>
 
<br /><br /><br />
<!-- 댓글 작성 -->
<%-- <c:if test="${not empty sessionScope.userId }"> --%>
<div>
	<form action="rReply" style="text-align: center; padding-bottom: 20px;">

		<input type="hidden" name="rnum" value="${rview.rnum }" />
		<textarea name="pcontent" id="pcontent" cols="30" rows="3" style="width:550px; height:80px;  vertical-align: middle;" placeholder="댓글을 입력해주세요"></textarea>
		<input type="submit" class="btn btn-default" style="width:80px; height:80px;" value="등록" />
	</form>
</div>
<%-- </c:if> --%>
		</div>
	</div>
	<div class="col-md-2"></div>
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
<!-- 페이지 상단 이동 버튼 -->
<div>
  <span id="topBtn">
	<i class="fas fa-chevron-up" style="font-size: 12px;"></i>
  </span>
</div>

<!-- 페이지 상단 이동 script -->
<script>
	var topEle = $('#topBtn');
	var delay = 500;

	topEle.on('click', function() {
		$('html').stop().animate({scrollTop: 0}, delay);
		});
</script>

<!-- 글작성 새창 스크립트 -->
<script language="javascript">
	function win_op(mypage, myname, w, h, scroll) {
	var winl = (screen.width - w) / 2;
	var wint = (screen.height - h) / 2;
	winprops = 'height='+h+',width='+w+',top='+wint+',left='+winl+',scrollbars='+scroll+',resizable'
	win = window.open(mypage, myname, winprops)
	if (parseInt(navigator.appVersion) >= 4) { win.window.focus(); }
	}
</script>

</body>

<script src="${pageContext.request.contextPath}/resources/js/bootjs/bootstrap.js" type="text/javascript"></script>

</html>