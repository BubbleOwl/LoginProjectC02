<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복체크</title>
<script type="text/javascript">
	function formCheck(){
		var id = document.getElementById("id");
		if (id.value.length < 3 || id.value.length > 10) {
			alert("아이디는 3~10자 사이로 작성해주세요!");
			id.focus();
			id.select();
			return false;
		}
		return true;
	}
	
	function putid(id){
		opener.document.getElementById("id").value = id;
		this.close();
	}
</script>
</head>
<body>
	<h1>ID 중복체크 페이지</h1>
	<form action="idsearch" onsubmit="return formCheck();">
		ID :
		<input type="text" name="custId" id="id" placeholder="3~10자로 입력하세요."
			value="${custId}">
		<input type="submit" value="ID검색">
	</form>
	<c:if test="${searchFlag }">
		<br>
		<c:if test="${cvo == null }">
			${custId } 는 사용 가능합니다.
			<input type="button" value="아이디 사용하기" onclick="putid('${custId }')">
		</c:if>
		<c:if test="${cvo != null }">
			${custId } 는 이미 존재하는 아이디이므로, 사용 불가능합니다.
		</c:if>
	</c:if>
</body>
</html>