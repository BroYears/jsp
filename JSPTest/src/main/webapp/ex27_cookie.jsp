<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK">
	<style>
		
	</style>
</head>
<body>
	<!-- ex27_cookie.jsp -->
	<h1>로그인</h1>
	
	<form method="POST" action="ex27_cookie_ok.jsp">
		<table calss="vertical content">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" required class="short"></td>
			</tr>
			<tr>
				<th>암호</th>
				<td><input type="password" name="pw" required class="short"></td>
			</tr>
		</table>
		<div>
			<div>
				<label><input type="checkbox" id="cbRemember" name="cbRemember" value="y">아이디 저장하기</label>
			</div>
			<div><button>로그인</button></div>
		</div>
	</form>
	
	<hr>
	
	<c:if test="${result}">
	<div class="message">인증 O</div>
	</c:if>
	
	<c:if test="${not result}">
	<div class="message">인증 X</div>
	</c:if>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script src="js/cookie.js"></script>
	<script>
	
		//처음 방문
		$('input[name="id"]').focus();
		
		if(getCookie('id') != '') {
			// 저장된 아이디 존재O
			$('input[name="id"]').val(getCookie('id'));
			$('input[name="pw"]').foucus();
			$('#cbRemember').prop('checked', true);
		} else {
			//저장된 아이디 존재X
			//처음 방문
			$('input[name="id"]').foucus();
		}
		
	</script>
</body>
</html>












