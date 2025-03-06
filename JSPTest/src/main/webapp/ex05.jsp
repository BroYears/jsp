<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String name = "홍길동";
	int age = 20;
	String color = "cornflowerblue";
	String css = "font-size: 3rem";
	String tag = "<input type='text'>";
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		h1 {
			color: <%= color %>;
		}
		div {
			<%= css %>
		}
	</style>
</head>
<body>
	<!-- ex05.jsp -->
	<h1>스크립틀릿 + 표현식</h1>
	
	<div>이름: <%= name %></div>
	<div>나이: <%= age %></div>
	
	<div style="background-color: cornflowerblue;">cornflowerblue</div>
	<div style="background-color: <%= color %>;"><%= color %></div>
	
	<%= tag %>
	
	<script>
		window.onclick = function() {
			alert('<%= name %>');
		};
	</script>
	
</body>
</html>