<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<!-- css 가져오기 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/semantic.min.css">

    <style type="text/css">
        body {
            background-image: url("resources/imges/cover/01.jsp");
          	background-size: cover;
        }

        body>.grid {
            height: 100%;
        }

        .image {
            margin-top: -100px;
        }

        .column {
            max-width: 450px;
        }

    </style>
</head>
<body>
		<div class="ui middle aligned center aligned grid">
        <div class="column">
            <h2 class="ui teal image header">
               YOLO 회원가입 페이지
            </h2>
       
          
	<form action="${pageContext.request.contextPath}/user/register" method="post">
            <div class="ui large form">
                <div class="ui stacked segment">
	
	
                    <div class="field">
                        <div class="ui left icon input">
		<input type="text" name="userId" class="form-control" placeholder="아이디" />
	</div>
	</div>

	 <div class="field">
     <div class="ui left icon input">
		<input type="text" name="userName" class="form-control" placeholder="이름" />
		
	</div>
	</div>
	 <div class="field">
     <div class="ui left icon input">
		<input type="email" name="userEmail" class="form-control" placeholder="이메일" />
	</div>
	</div>
	 <div class="field">
     <div class="ui left icon input">
		<input type="password" name="userPw" class="form-control" placeholder="비밀번호" />
	</div>
	</div>
	 <div class="field">
     <div class="ui left icon input">
		<input type="password" class="form-control" placeholder="비밀번호 확인" />
	</div>
	</div>
	<div class="row">
	<div class="col-xs-8">
		<div class="checkbox icheck">
			<label> 
				<input type="checkbox" />약관에 <a href="#">동의</a>
			</label>
		</div>
	</div>
		<button type="submit" class="ui fluid large teal submit button">가입</button>
		
			</div>
		</div>
	</div>
	
	</form>
	

<div class="social-auth-links text-center">
<p>- 또는 -</p>
<a href="" class="btn btn-block btn-social btn-facebook btn-flat">
	<i class="fa fa-facebook"></i>페이스북으로 가입 <br />
</a>
<a href="#" class="btn btn-block btn-social btn-google btn-flat">
	<i class="fa fa-google-plus"></i>구글 계정으로 가입  <br />
</a>
<a href="${pageContext.request.contextPath}/user/login" class="text-center">로그인</a>
</div>
	
	
	
<!-- /.form-box -->

<!-- /.register-box -->
<script src="${pageContext.request.contextPath}/resources/js/jquery3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/semantic.min.js"></script>
<script>
	$(function () {
		$('input').iCheck({
			checkboxClass: 'icheckbox_square-blue',
			radioClass: 'iradio_square-blue',
			increaseArea: '20%' // optional
		});
	});
</script>
</body>
</html>