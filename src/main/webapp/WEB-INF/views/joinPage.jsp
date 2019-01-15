<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript">
	<c:if test="${joinError != null}">alert('${joinError}');</c:if>
	function formCheck(){
		var id = document.getElementById("id");
		var pw1 = document.getElementById("pw1");
		var pw2 = document.getElementById("pw2");
		var name = document.getElementById("name");
// 		alert(id.value);
// 		alert(pw1.value);
// 		alert(pw2.value);
// 		alert(name.value);
		if (id.value.length < 3 || id.value.length > 10) {
			alert("아이디는 3~10자 사이로 작성해주세요!");
			id.focus();
			id.select();
			return false;
		}
		if (pw1.value.length < 3 || pw1.value.length > 10) {
			alert("비밀번호는 3~10자 사이로 작성해주세요!");
			pw1.focus();
			pw1.select();
			return false;
		}
		if (pw1.value != pw2.value) {
			alert("비밀번호와 비밀번호확인의 내용이 일치하지않습니다!");
			pw1.focus();
			pw1.select();
			return false;
		}
		if (name.value == "") {
			alert("이름을 입력해주세요!");
			name.focus();
			name.select();
			return false;
		}
		return true;
	}
	
	function idCheck(){
		var id = document.getElementById("id");
		window.open("idsearch?custId="+id.value, "windowId", "top=100px,left=200px,width=800px,height=500px");
	}
</script>
</head>
<body>
	<h1>
		<a href="./">
			<img src="./resources/img/honto.png">
		</a>
		회원가입 페이지
	</h1>
	<form action="join" method="post" onsubmit="return formCheck();">
		<table>
			<tr>
				<td>
					아이디
				</td>
				<td>
					<input type="text" name="custId" id="id" 
						placeholder="중복체크를 해주세요." value="${cvo.custId}">
					<input type="button" value="중복체크" onclick="idCheck()">
				</td>
			</tr>
			<tr>
				<td>
					비밀번호
				</td>
				<td>
					<input type="password" name="password" id="pw1" value="${cvo.password}">
				</td>
			</tr>
			<tr>
				<td>
					비밀번호 확인
				</td>
				<td>
					<input type="password" name="password2" id="pw2" value="${cvo.password}">
				</td>
			</tr>
			<tr>
				<td>
					이름
				</td>
				<td>
					<input type="text" name="name" id="name" value="${cvo.name}">
				</td>
			</tr>
			<tr>
				<td>
					이메일
				</td>
				<td>
					<input type="email" name="email" value="${cvo.email}">
				</td>
			</tr>
			<tr>
				<td>
					회원구분
				</td>
				<td>
					<input type="radio" name="division" value="personal" 
						<c:if test="${cvo.division == 'personal' }">checked</c:if>>개인
					<input type="radio" name="division" value="company"
						<c:if test="${cvo.division == 'company' }">checked</c:if>>회사
				</td>
			</tr>
			<tr>
				<td>
					식별번호
				</td>
				<td>
					<input type="text" name="idno" value="${cvo.idno}">
				</td>
			</tr>
			<tr>
				<td>
					주소
				</td>
				<td>
					<input type="text" name="address" value="${cvo.address}">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="회원가입">&nbsp;
					<input type="reset" value="초기화">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>