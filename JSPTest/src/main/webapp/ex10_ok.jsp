<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//POST > 인코딩
	request.setCharacterEncoding("UTF-8");

	//request.getParameter()
	//1. 컨트롤 값 입력하면 > 입력값 반환
	//2. 입력을 안하면 > "" 반환
	//3. key 존재 안하면 > null 	반환
	
	//텍스트 박스
	String txt1 = request.getParameter("txt1");

	System.out.println(txt1 == null); //false
	System.out.println(txt1 == ""); //false
	
	//암호 상자
	String txt2 = request.getParameter("txt2");
	
	//멀티 텍스트
	String txt3 = request.getParameter("txt3");
	txt3 = txt3.replace("\r\n", "<br>");
	
	//체크 박스
	//1. value 작성 O > 권장
	//	- 체크 O > value 전송
	//	- 체크 X > null
	//2. value 작성 X > 비권장
	//	- 체크 O > on 전송
	//	- 체크 X > null
	String cb1 = request.getParameter("cb1");
	
	//체크 박스들
	String cb2 = request.getParameter("cb2");
	String cb3 = request.getParameter("cb3");
	String cb4 = request.getParameter("cb4");
	
	String temp = "";
	temp += cb2 + ",";
	temp += cb3 + ",";
	temp += cb4 + ",";
	
	//cb2 > cb3 > cb4
	for (int i=2; i<=4; i++) {
		request.getParameter("cb" + i);
	
	
	}
	
	//체크 박스들(cb5 * 5개)
	//String cb5=request.getParameter("cb5");
	//System.out.println(cb5);
	
	//ex10_ok.jsp?cb5=독서&cb5=운동&cb=코딩
	String[] cb5 = request.getParameterValues("cb5");
	
	//라디오 버튼
	String rb = request.getParameter("rb");
	
	//셀렉트 박스
	String sel1 = request.getParameter("sel1");
	
	String[] sel2 = request.getParameterValues("sel2");
	
	//히든 태그
	String id = request.getParameter("id");
	
	//날짜
	String date1 = request.getParameter("date1");
	
	//컬러
	String color1 = request.getParameter("color1");
	
	//사용자 정의 컨트롤
	String left = request.getParameter("left");
	String top = request.getParameter("top");
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK">
	<style>
		body { padding-bottom: 300px;
			background-color: <%= color1 %>;
		}
		
	</style>
</head> 
<body>
	<!-- ex10_ok.jsp -->
	<h1>결과</h1>
	
	<h2>텍스트 박스</h2>
	<div><%= txt1 %></div>
	
	<h2>암호 상자</h2>
	<div><%= txt2 %></div>
	
	<h2>멀티 텍스트</h2>
	<div><%= txt3 %></div>
	
	<h2>체크 박스</h2>
	<div><%= cb1 %></div>
	
	<h2>체크 박스들</h2>
	<div><%= temp %></div>
	
	<h2>체크 박스들</h2>
	<div><%= Arrays.toString(cb5) %></div>
	
	<h2>라디오 버튼</h2>
	<div><%= rb %></div>
	
	<h2>셀렉트 박스</h2>
	<div><%= sel1 %></div>
	
	<h2>셀렉트 박스</h2>
	<div><%= Arrays.toString(sel2) %></div>
	
	<h2>히든 태그</h2>
	<div><%= id %></div>
	
	<h2>날짜</h2>
	<div><%= date1 %></div>
	
	<h2>컬러</h2>
	<div><%= color1 %></div>
	
	<h2>고양이의 위치</h2>
	<div><%=left %>, <%=top %></div>
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
	
	</script>
</body>
</html>