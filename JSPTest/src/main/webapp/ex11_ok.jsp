<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");

	String width = request.getParameter("width");
	String height = request.getParameter("height");
	String color = request.getParameter("color");
	String txt = request.getParameter("txt");
	int count = Integer.parseInt(request.getParameter("count"));
	

%>
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
	<!-- ex11_ok.jsp -->
	<h1>결과</h1>
	
	<div>
		<% for (int i=0; i<count; i++) { %>
		<div style="border: 1px solid black; width: <%= width %>px; height: <%= height %>px; background-color: <%= color %>; display: flex; justify-content: center; align-items: center; margin: 5px; float: left"><%= txt %>
		</div> 
		<% } %>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>






