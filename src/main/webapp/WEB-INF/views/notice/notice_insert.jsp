<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js" />"></script>
</head>
<body style="background-color: #F1F1F1; text-align: center;" >

<div class="row" style="text-align: center;" align="center">
	<div class="col-md-4"></div>
	<div class="col-md-4"  align="center" style="text-align: center;">
	<h3 align="center"><strong>게시판작성</strong></h3>
	
     <form action="write" method="post" name="form1" target="notice" >
	
	
		   <div class="form-group" align="center" style="text-align: center;">
		  
              <label for="exampleFormControlInput1" style="font-size: 22px;">제목</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="ntitle" placeholder="제목을 작성해주세요." style="width: 500px;" >
          </div>
        <div class="form-group" align="center" style="text-align: center;">
            <label for="exampleFormControlInput1" style="font-size: 22px;">작성자</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="nname" placeholder="이름을 적어주세요." style="width: 500px;" readonly="readonly" value="test">
          </div>
          <div class="form-group" align="center " style="text-align: center;">
            <label for="exampleFormControlTextarea1" style="font-size: 22px;">내용</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" name="ncontent" rows="10" style="width: 500px;" ></textarea>
          </div>
         <button type="submit" class="btn_btn-info"  onclick="window.close()"  style="background-color: #fff;" >등록하기</button>
      <button type="button" class="btn_btn-secondary" onclick="window.close(pclose1())" style="background-color: #fff; margin-left: 20px;" >닫기</button>
      </form>
      </div>
      <div class="col-md-4"></div>
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