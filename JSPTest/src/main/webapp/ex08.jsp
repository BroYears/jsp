<%@page import="com.test.java.MyUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//자바 영역(?) > service 메서드의 내부 영역
	int num = 10; //무슨 변수?(멤버 변수 or 지역 변수) > 지역 변수
			
	/* 
	public void test() {
		
	} 
	*/
%>
<%!
	//선언부(멤버 변수 or 멤버 메서드)

	//이 영역이 클래스 내부 영역
	int num2 = 20; //멤버 변수
	
	public int sum(int a, int b) {
		return a + b;
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<!-- ex08.jsp -->
	<%= num %>
	<% MyUtil util = new MyUtil(); %>
	<div>10 + 20 = <%= sum(10, 20) %> </div>
	<div>30 + 40 = <%= sum(30, 40) %> </div>
	<div>50 + 60 = <%= util.sum(50, 60) %></div>
</body>
</html>