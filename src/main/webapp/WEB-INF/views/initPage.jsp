<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<script type="text/javascript">
<c:if test="${loginSuccess != null}">alert('${loginSuccess}');</c:if>
</script>
</head>
<body>
	<h1>
		<a href="./">
			<img src="./resources/img/honto.png">
		</a>
		메인 페이지
	</h1>
	
	<c:if test="${loginId == null }">
		<p><a href="join">회원가입</a></p>
		<p><a href="login">로그인</a></p>
	</c:if>
	<c:if test="${loginId != null }">
	<br>
	${loginName }(${loginId }) 님 로그인 중...
	<br>
		<p><a href="logout">로그아웃</a></p>
		<p><a href="update">개인정보수정</a></p>
	</c:if>
</body>
</html>