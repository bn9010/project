<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/babfb06f19.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/hover.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js" />"></script>
<!--notice delete  -->
<script>
	function notice_delete() {
		
		if(confirm("지금 삭제하시겠습니까?")){
			location.href = "http://localhost:9000/one/ndelete?nid=${nview.nid }";
			alert("삭제가 완료되었습니다.");
		}else{
			return false;
		}
		
	}
</script>

</head>
<body style="background-color: #F1F1F1;">

    <!-- Header -->
    <header id="header">
    
               
        <div class="inner">
                        <div class="row">
                        <div class="col-md-2">
                       
                        <a href="./" class="logo" style="font-size: 22px;">YOLO By Recipe</a>
                        </div>
                   
                        <div class="col-md-8" align="center">
                         <form action="Search">

                <input type="text" placeholder="Recipe Search " style="width: 350px; height: 40px; float:left; color: black; margin-left: 130px;"> 
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
                  <li><a href="./" >HOME</a></li>
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
                    <li><a href="chef">Chef</a></li>
                  </ul>
  
           </div>
              
        </div>
    </header>
 <!-- Banner -->
    	
    <section id="banner">

        <div class="inner">
     
         <header>
               
                <h1>YOLO By Notice</h1>
                
            </header>
         
      	
      	</div>
      	</section>
      
<div class="row" align="center">
	<div class="col-md-2"></div>
	
	<div class="col-md-8" style="background-color: #fff; text-align:center;" >
 	 <div class="form-group"  style=" display:inline-block; margin-top: 15px; margin-bottom: 25px;">
              <label style="font-size: 22px; display: inline-block; " >제목</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="ntitle" placeholder="제목을 작성해주세요." style="width: 500px; display:inline-block;"  readonly="readonly"  value="${nview.ntitle }">
          </div>
    
     <div class="form-group"  style=" margin-top: 15px;margin-bottom: 25px; margin-right: 20px;">
            <label style="font-size: 22px; display: inline-block;">작성자</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="nname" placeholder="이름을 적어주세요." style="width: 500px; display:inline-block;"  readonly="readonly"  value="${ nview.nname }">
          </div>
                  
     <div class="form-group"   style=" margin-top: 15px;margin-bottom: 25px;">
            <label for="exampleFormControlTextarea1" style="font-size: 22px; float:left; margin-left: 360px;" >내용</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" name="ncontent" rows="10" style="width: 500px; "  readonly="readonly">${nview.ncontent }</textarea>
          </div>
       
         <button type="submit" class="btn btn-info"  onclick="location.href='http://localhost:9000/one/notice_modify?nid=${nview.nid}'" >수정</button>
      <button type="button" class="btn btn-info" onclick="location.href='http://localhost:9000/one/notice'" style="margin-left: 20px;" >돌아가기</button>
  		 <button type="button" class="btn btn-danger" onclick="notice_delete()" style=" margin-left: 20px;">삭제</button></a>
      </div>
      	<div class="col-md-2"></div>
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
		<c:forEach items="${nreply1 }" var="nrpl">
		<c:set value="${nrpl.rpindent }" var="endIndent" />
		<div class="nreply-list" style="border-bottom: 1px solid lightgray;">
		<c:forEach begin="1" end="${nrpl.rpindent }" var="cnt">
		<c:if test="${cnt eq endIndnet }">
		</c:if>
		</c:forEach>
		<div class="profile-body">
		<h4 class="profile-hedaing">
		<b class="info_name">${nrpl.rpid }</b>
		<fmt:formatdate value="${nrpl.rpdate }" pattern="yyyy-MM-dd hh:mm" />
				
				<span>|</span>
				<a href="nreply_delete?rpnum=${nrpl.rpnum }&nid=${nrpl.nid }">삭제</a>
		</h4>
		${nrpl.rpcontent }
		</div>
		</div>
		</c:forEach>
		
		
		<div>
	<form action="nreply" style="text-align: center; padding-top:20px; padding-bottom: 20px;">
		<input type="hidden" name="nid" value="${nview.nid }" />
		<textarea name="rpcontent" id="pcontent" cols="30" rows="3" style="width:550px; height:30px;  vertical-align:middle; float: left;" placeholder="댓글을 입력해주세요"></textarea>
		<input type="submit" class="btn btn-default" style="width:80px; height:30px; float: left;" value="등록" />
	</form>
</div>
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
  <!-- window.close 닫을떄 부모창을 새로고침한다  -->
<script language="javascript">
function pclose1(){
    opener.location.reload();
    window.close();
}
</script>

</body>
</html>