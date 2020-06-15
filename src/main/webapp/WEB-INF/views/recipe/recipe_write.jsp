<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>YOLO의 레시피</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/input.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.5.1.min.js"/>" charset="utf-8"></script>

<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/babfb06f19.js" crossorigin="anonymous"></script>

<!-- 돌아가기 -->
<script>
	function goBack() {
		location.href = "http://localhost:9000/one/recipe";
	}
</script>

<!-- 펼치기, 접기 -->
<script type="text/javascript" language="JavaScript">
	function layer_toggle(obj) {
    if (obj.style.display == 'none') obj.style.display = 'block';
    else if (obj.style.display == 'block') obj.style.display = 'none';
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
               
                <h1 style="font-family: sans-serif;">YOLO<i class="fas fa-hamburger"></i>RECIPE</h1>
                <h2 style="color: #fff;">레시피 등록</h2>
            </header>
      	</div>
      	</section>
      <!-- 레시피 작성 상단 -->	
      <form action="rwrite" method="post" enctype="multipart/form-data">
      			<div class="row" style=" margin-top: 15px;">
      	<div class="col-md-2"></div>
      	<div class="col-md-8" style="background-color: #fff; border: 1px solid lightgray; padding: 15px 15px 30px 15px; margin-top: 10px;" align="center">
      	<h2><strong>레시피 제목</strong></h2>
      	<input type="text" name="rtitle" style="width: 500px; height: 30px;" placeholder="예)맛있는 어묵조림만들기"/> 
      	<br /><br />
      	<h2><strong>대표 사진</strong></h2>
      <div class="imageBox" style=" width: 200px; height: 200px; background: url('${pageContext.request.contextPath}/resources/images/noimage.png')" align="center">	
			<input type="file" id="fileToUpload_3" class="file" name="uploadFile" style="visibility: hidden;" multiple />
			<a class="upload-button" href="" onclick="document.getElementById('fileToUpload_3').click(); return false" >IMAGE UPLOAD</a>
			</div>   
      	<br /><br />
      	<div style="margin-top: 10px;">
      	<h2 ><strong>요리 소개</strong></h2> 	<br />
      	<textarea  name="rinformation" style="width: 500px; height: 120px; " placeholder="레시피 탄생배경을 적어주세요! 예)김밥속에서도 밥옆에서도 빛났다"></textarea>
      	</div>
      	<br /><br />
      	      	<!-- 카테고리 -->
      			<div style="margin-top: 10px;" align="center">
			<label style="font-size: 22px;">카테고리</label>
			<select style="height: 30px;" name="rcategory">
				<option value="밑반찬">밑반찬</option>
				<option value="메인반찬">메인반찬</option>
				<option value="국/탕/찌개">국/탕/찌개</option>
				<option value="디저트">디저트</option>
				<option value="면/만두">면/만두</option>
				<option value="밥/죽/떡">밥/죽/떡</option>
				<option value="김치/젓갈/장류">김치/젓갈/장류</option>
				<option value="양념/소스/잼">양념/소스/잼</option>
				<option value="양식">양식</option>
				<option value="중식">중식</option>
				<option value="일식">일식</option>
				<option value="차/음료/술">차/음료/술</option>
				<option value="기타">기타</option>
			</select>
		</div>
      	
      <!-- 인원/시간/난이도  -->
      	<div style="margin-top: 10px;">
      	<label style=" font-size: 22px;">요리 정보</label>
      	
      	<label style="margin-left: 19px;">인원</label>
      	<select style="height: 30px;" name="rserves">
      	<option value="1인분">1인분</option>
			<option value="2인분">2인분</option>
			<option value="3인분">3인분</option>
			<option value="4인분">4인분</option>
			<option value="5인분 이상">5인분 이상</option>
      	</select>
      
      		<label style="margin-left: 19px;">시간</label>
      	  	<select style="height: 30px;" name="rtime">
      	<option value="10분 이내">10분 이내</option>
			<option value="20분 이내">20분 이내</option>
			<option value="30분 이내">30분 이내</option>
			<option value="60분 이내">60분 이내</option>
			<option value="90분 이내">90분 이내</option>
			<option value="90분 이상">90분 이상</option>
		</select>
      	
      		<label style="margin-left: 19px;">난이도</label>
      		<select style="height: 30px;" name="rlevel">
      		<option value="초보">초보</option>
			<option value="중수">중수</option>
			<option value="고수">고수</option>
			<option value="요리사">요리사</option>
			<option value="고든램지">고든램지</option>
		</select>
      	</div>
      	</div>
      	
      	<div class="col-md-2"></div>
      	</div>

      	<div class="row" style="margin-top:15px; ">
      	<div class="col-md-2"></div>
      	<div class="col-md-8" style="margin-top: 10px; border: 1px solid lightgray; padding: 15px 15px 30px 15px; background-color: #fff;" align="center">
      		<h3 align="center"><strong>재료</strong></h3>
		<textarea name="ringredients" style="width: 500px; height: 120px;" placeholder="예)어묵 300g, 맛간장 150ml, 물 100ml"></textarea> 	
	</div>
  
      	</div>
      	
      	<div class="col-md-2"></div>
      	
      	    <!-- 레시피 작성 중단 -->	
      	<div class="row" style="margin-top: 15px;  ">
      	<div class="col-md-2"></div>	
      	<div class="col-md-8" style="margin-top: 10px; border: 1px solid lightgray; padding: 15px 15px 30px 15px; background-color: #fff;" align="center">
      <h3 align="center"><strong>요리순서</strong></h3> <br />
      	<div align="center">
      	<p><strong>요리의 맛이 좌우될수있어요! 중요한부분은 꼭 넣어주세요!</strong> <br />
      	Ex)10분간 익혀주세요 ▷ 10분간 약한불로 익혀주세요. <br />
      	마늘편은 익혀주세요 ▷ 마늘편을 충분히 익혀주셔야 매운 맛이 사라집니다. <br />
     	 꿀을 조금 넣어주세요 ▷ 꿀이 없는 경우, 설탕 1스푼으로 대체 가능합니다.
  	   	</p><br />
      	</div>

   <!-- 중단 요리순서부분 -->
 		<div>
     <div id="addtest" align="center">		 
      	<div id="testadd" class="1" align="center">
			<h3 id="labeltest" style=" margin-top: 50px; text-align: center;">Step.1</h3>
	  	<textarea id="textareatest" name="step1" style="width: 500px; height: 120px;"></textarea >
	  	<div align="center">
	  </div>
	  
	  </div>
 </div>
 	</div>

 <!-- STEP 추가시 생성되는부분 -->
 <div id="why"></div>

	<!-- STEP 추가버튼 -->
	<div>
	   <input type="button" class="btn btn-default" value="조리순서추가" onclick="addtest()" style="margin-top:15px; margin-bottom: 15px;">      	   
	</div>
</div>
     
      	<div class="col-md-2"></div>
    </div>
     <!-- 요리팁  -->
    <div class="row" style="margin-top: 15px;">
    <div class="col-md-2"></div>
    <div class="col-md-8" style="margin-top: 10px; margin-bottom:15px; border: 1px solid lightgray; padding: 15px 15px 30px 15px; background-color: #fff; text-align: center;" align="center">
    <h1><strong>요리팁</strong></h1>
    <textarea name="rtip" style="width: 500px; height: 120px;" placeholder="예)국물에 진한 맛을 만들어주는 육수!
하지만 육수를 끓이는 시간이 오래 걸린다고요?
만두 속만 쏙 파 내어 물에 풀어 끓여주면
만두 속의 야채와 고기에서 육수가 우러나
간단하게 만들어 먹을 수 있답니다."></textarea>  
	</div>
    <div class="col-md-2"></div>
    </div>
    
    <!-- 조리사진 업로드 부분 -->
    <div class="row" style="margin-top: 15px;">
    <div class="col-md-2"></div>
    <div class="col-md-8" style="margin-top: 10px; margin-bottom: 10px; border: 1px solid lightgray; padding: 15px 15px 30px 15px; background-color: #fff;" align="center">
    <label><h3><strong>요리조리사진</strong></h3></label>
    <div style="text-align: center;">
   <div  class="imageBox" style="display:inline-block; width: 200px; height: 200px; background: url('${pageContext.request.contextPath}/resources/images/noimage.png')">	
  <input type="file" id="fileToUpload_4" class="file2" name="uploadFile1" style="visibility: hidden;" multiple />
                        <a class="upload-button" href="" onclick="document.getElementById('fileToUpload_4').click(); return false" >IMAGE UPLOAD</a>
                  </div>  
                   <div  class="imageBox" style="display:inline-block; width: 200px; height: 200px; background: url('${pageContext.request.contextPath}/resources/images/noimage.png')">	
  <input type="file" id="fileToUpload_5" class="file3" name="uploadFile2" style="visibility: hidden;" multiple />
                        <a class="upload-button" href="" onclick="document.getElementById('fileToUpload_5').click(); return false" >IMAGE UPLOAD</a>
                  </div> 
                   <div  class="imageBox" style="display:inline-block; width: 200px; height: 200px; background: url('${pageContext.request.contextPath}/resources/images/noimage.png')">	
  <input type="file" id="fileToUpload_6" class="file4" name="uploadFile3" style="visibility: hidden;" multiple />
                        <a class="upload-button" href="" onclick="document.getElementById('fileToUpload_6').click(); return false" >IMAGE UPLOAD</a>
                  </div> 
                   <div  class="imageBox" style="display:inline-block; width: 200px; height: 200px; background: url('${pageContext.request.contextPath}/resources/images/noimage.png')">	
  <input type="file" id="fileToUpload_7" class="file5" name="uploadFile4" style="visibility: hidden;" multiple />
 						<a class="upload-button" href="" onclick="document.getElementById('fileToUpload_7').click(); return false" >IMAGE UPLOAD</a>
                  </div> 
    </div>
    </div>
    <div class="col-md-2"></div>
    </div>
<!-- 등록, 돌아가기  -->
	<div class="row" style="margin-top: 10px; margin-bottom: 10px;">
		<div class="col-md-3"></div>
		<div class="col-md-6" align="center">
			<input type="submit" class="btn btn-default" value="등록하기" />
			<input type="button" class="btn btn-default" onclick="goBack()" value="돌아가기"/>
		</div>
		<div class="col-md-3"></div>
	</div>
</form>

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
  
<!-- 이미지 업로드  -->
<script>
jQuery(document).ready(function($) {
    $(".file").change(function() {
        var targetPreview = $(this).parent();

        var files = !!this.files ? this.files : [];
        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support

        if (/^image/.test( files[0].type)){ // only image file
            var reader = new FileReader(); // instance of the FileReader
            reader.readAsDataURL(files[0]); // read the local file
            reader.onload = function(e) {
                targetPreview.css("background-image", 'url(' + e.target.result + ')');
    
            }
        }
    });
});
</script>
<script>
jQuery(document).ready(function($) {
    $(".file2").change(function() {
        var targetPreview = $(this).parent();

        var files = !!this.files ? this.files : [];
        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support

        if (/^image/.test( files[0].type)){ // only image file
            var reader = new FileReader(); // instance of the FileReader
            reader.readAsDataURL(files[0]); // read the local file
            reader.onload = function(e) {
                targetPreview.css("background-image", 'url(' + e.target.result + ')');
    
            }
        }
    });
});
</script>
<script>
jQuery(document).ready(function($) {
    $(".file3").change(function() {
        var targetPreview = $(this).parent();

        var files = !!this.files ? this.files : [];
        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support

        if (/^image/.test( files[0].type)){ // only image file
            var reader = new FileReader(); // instance of the FileReader
            reader.readAsDataURL(files[0]); // read the local file
            reader.onload = function(e) {
                targetPreview.css("background-image", 'url(' + e.target.result + ')');
    
            }
        }
    });
});
</script>
<script>
jQuery(document).ready(function($) {
    $(".file4").change(function() {
        var targetPreview = $(this).parent();

        var files = !!this.files ? this.files : [];
        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support

        if (/^image/.test( files[0].type)){ // only image file
            var reader = new FileReader(); // instance of the FileReader
            reader.readAsDataURL(files[0]); // read the local file
            reader.onload = function(e) {
                targetPreview.css("background-image", 'url(' + e.target.result + ')');
    
            }
        }
    });
});
</script>
<script>
jQuery(document).ready(function($) {
    $(".file5").change(function() {
        var targetPreview = $(this).parent();

        var files = !!this.files ? this.files : [];
        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support

        if (/^image/.test( files[0].type)){ // only image file
            var reader = new FileReader(); // instance of the FileReader
            reader.readAsDataURL(files[0]); // read the local file
            reader.onload = function(e) {
                targetPreview.css("background-image", 'url(' + e.target.result + ')');
    
            }
        }
    });
});
</script>

<script type="text/javascript">
var currentStep = 1;
var name=1;
function addtest(){	

	currentStep++;
	name++;
	var div=document.createElement('div');

	div.innerHTML="<div id='testadd' class='1' align='center'>"

		+"<h3 id='labeltest1'style='margin-top: 50px; text-align: center;'>Step."+currentStep+"</h3>"

		+"<textarea id='textareatest1' name='step"+name+"' style='width: 500px; height: 120px;'></textarea>"

		+"</div></div>";

	document.getElementById('why').appendChild(div);

}
</script>



</body>
</html>
	  	
	  	
	  	