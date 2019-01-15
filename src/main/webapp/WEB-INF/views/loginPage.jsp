<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javascript">
<c:if test="${loginError != null}">alert('${loginError}');</c:if>
	function formCheck(){
		var id = document.getElementById("id");
		var pw = document.getElementById("pw");
		if (id.value == "" || pw.value == "") {
			alert("아이디와 비밀번호를 입력해주세요!");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<h1>
		<a href="./">
			<img src="./resources/img/honto.png">
		</a>
		로그인 페이지
	</h1>
	<form action="login" method="post" onsubmit="return formCheck();">
		<table>
			<tr>
				<td>아이디</td>
				<td>
					<input type="text" name="custId" id="id">
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>
					<input type="password" name="password" id="pw">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>