<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK">
	<style>
		
	</style>
</head>
<body>
	<!-- ex18_interval.jsp -->
	<h1>세션 만료 시간 설정하기</h1>
	<%
		/*
			
			1. 로그인
			
			2. 장바구니
				
		
		*/
		
		session.setMaxInactiveInterval(30);
	%>
	
	<div><a href="ex18_session.jsp">돌아가기</a></div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
	
	</script>
</body>
</html>