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
	<!-- ex13_request.jsp -->
	<h1>request > 요청 관련 정보</h1>
	
	<div>요청 URL: <%= request.getRequestURI()  %></div>
	<div>요청 서버 도메인: <%= request.getServerName() %></div>
	<div>요청 포트 번호: <%= request.getServerPort() %></div>
	<div>쿼리 문자열: <%= request.getQueryString() %></div>
	<div>요청 메서드: <%= request.getMethod() %></div>
	<div>컨텍스트 경로: <%= request.getContextPath() %></div>
	
	
	<div>
		<a href="./ex12_form.jsp">12번 예제 페이지(상대 경로)</a>
	</div>
	
	<div>
		<a href="<%= request.getContextPath() %>/ex12_form.jsp">12번 예제 페이지(절대 경로)</a>
	</div>
	
	<div>
		클라이언트 주소: <%= request.getRemoteAddr() %>	
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
	
	</script>
</body>
</html>