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
	<!-- ex26_cookie_2.jsp -->
	<h1>두번째 페이지</h1>
	
	<div>
		<a href="ex26_cookie_1.jsp">첫번째 페이지</a>
		<a href="ex26_cookie_2.jsp">두번째 페이지</a>
		<a href="ex26_cookie_3.jsp">세번째 페이지</a>
	
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script src="js/cookie.js"></script>
	<script>
	
		$('body').css('background-color', getCookie('color'));
	
	</script>
</body>
</html>