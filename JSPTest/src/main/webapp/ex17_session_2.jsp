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
	<!-- ex17_session_2.jsp -->
	<h1>다른 페이지</h1>
	
	<div>a: <%= session.getAttribute("a") %></div>
	<div>b: <%= application.getAttribute("b") %></div>
	
	<div>
		<a href="ex17_session.jsp">처음 페이지</a>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
	
	</script>
</body>
</html>