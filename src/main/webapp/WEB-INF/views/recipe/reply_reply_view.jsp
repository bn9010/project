<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reply_reply_view</title>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.5.1.min.js"/>" charset="utf-8"></script>
</head>
<body>
<h3>답글 달기</h3>
<!-- 대댓글 -->
<form action="rReply_reply" target="recipe?rnum=${rp.rnum }">
	<input type="hidden" name="pnum" value="${rp.pnum }" />
	<input type="hidden" name="pgroup" value="${rp.pgroup }" />
	<input type="hidden" name="pstep" value="${rp.pstep }" />
	<input type="hidden" name="pindent" value="${rp.pindent }" />
	<input type="hidden" name="rnum" value="${rp.rnum }" />
	<textarea name="pcontent" id="pcontent" cols="30" rows="3"></textarea>
	<input type="submit" value="등록" onclick="window.close()"/>
	<input type="button" onclick="window.close('recipesee?rnum=${rp.rnum }')" value="취소"/>
</form>

</body>
</html>