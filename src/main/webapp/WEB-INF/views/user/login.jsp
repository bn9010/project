<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css 가져오기 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/semantic.min.css">

    <style type="text/css">
        body {
            background-image: url("resources/images/cover/01.jpg");
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
 			YOLO 로그인 페이지
            </h2>
            <form class="ui large form" action="loginPost" method="post">
                <div class="ui stacked segment">
                 <div class="field">
	<div class="ui left icon input">
		<input type="text" name="userId" class="form-control" placeholder="아이디" />
		</div>
	</div>
	<div class="field">	
        <div class="ui left icon input">
		<input type="password" name="userPw" class="form-control" placeholder="비밀번호" />
		</div>
	</div>
	<div class="row">
	<div class="col-xs-8">
	<div class="checkbox icheck">
		<label>
			<input type="checkbox" name="userCookie" />로그인유지
		</label>
	</div>
	</div>
	<!-- /.col -->
	
	<button type="submit" class="ui fluid large teal submit button">
		<i class="fa fa-sign-in"></i>로그인
	</button>
	</div>
	</div>
	
	<div class="social-auth-links text-center">
	<p>- 또는 -</p>
	</form>	
	<a href="#" class="btn-social btn-facebook btn-flat">
		<i class="fa fa-facebook"></i> 페이스북으로 로그인
	</a>
	<a href="#" class="btn btn-block btn-social btn-google btn-flat">
		<i class="fa fa-google-plus"></i> 구글 계정으로 로그인
	</a>
	</div>

	
	<!-- /.social-auth-links -->
	
	<a href="#">비밀번호 찾기</a> <br />
	<a href="${pageContext.request.contextPath}/user/register" class="text-center">회원가입</a>
	</div>
</div>
<script>
	var msg = "${msg}";
	if (msg === "REGISTERED") {
		alert("회원가입이 완료되었습니다. 로그인해주세요~");
	} else if  (msg == "FAILURE") {
		alert("아이디와 비밀번호를 확인해주세요.");
	}
	
	$(function () {
		$('input').iCheck({
			checkboxClass: 'icheckbox_square-blue',
			radioClass: '/iradio_square-blue',
			increaseArea: '20%' //optional
		});	
	});
</script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery3.3.1.min.js"></script>
 	<script src="${pageContext.request.contextPath}/resources/js/semantic.min.js"></script>
</body>
</html>