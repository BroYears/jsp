<%@page import="org.apache.jasper.runtime.JspApplicationContextImpl"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	//삭제할 파일명 가져오기
	String filename = request.getParameter("filename");

	//파일 삭제
	String path = application.getRealPath("/pic");
	
	File file = new File(path + "\\" + filename);
	file.delete();
	
	response.sendRedirect("ex21.jsp");
	
%>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK">
	<style>
		
	</style>
</head>
<body>
	<!--  -->
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
	
	</script>
</body>
</html>