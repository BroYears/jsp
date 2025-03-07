<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ taglib prefix="xml" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

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
	<!-- ex24_jstl.jsp -->
	<h1>JSTL</h1>
	<!--  
		JSTL
		- 프로그래밍 기능이 구현된 태그
		- 자바의 제어 > 대신하기 위한 역할
		- 변수
		- 조건문
		- 반복문 등..
		- 문자열 처리
	-->
	
	<h2>변수 선언</h2>
	<%
		int a = 10;//지역변수
		pageContext.setAttribute("b", 20); //pageContext 변수
	%>
	<!--
	
		마크업 언어
		- <태그명></태그명>
		- <네임스페이스:태그명></네임스페이스:태그명>
	 
		JSTL 변수
		- pageContext 변수
	-->
	<c:set var="c" value="30" />
	
	<div>a: <%= a %></div>
	<div>a: ${a}</div>
	
	<div>b: <%= pageContext.getAttribute("b") %></div>	
	<div>b: ${b}</div>
	
	<%-- <div>c: <%= c %></div> --%>
	<div>c: ${pageScope.c}</div>
	<div>c: ${requestScope.c}</div>
	<div>c: ${sessionScope.c}</div>
	<div>c: ${applcationScope.c}</div>
	
	<h2>변수 수정하기</h2>
	<c:set var="c" value="50" />
	<div>c: ${c}</div>
	
	<h2>변수 삭제하기</h2>
	<c:remove var="c" />
	<div>c: ${c}</div> <!-- 값이 ""(공백일 때) -->
	
	<h2>변수 상태</h2>
	<c:set var="c" />
	<c:set var="c" value="" />
	<c:set var="c" value="null" /> <!-- null이라는 문자열 -->
	<div>c: ${c}</div>
	<div>c: ${empty c}</div>	
	<div>c: ${empty d}</div>	
	
	<h2>조건문</h2>
	<c:set var="num" value="0" />
	
	
	<c:if test="${num > 0}">
		<div>${num}은 양수입니다.</div>
	</c:if>
	
	<c:if test="${num <= 0}">
		<div>${num}은 양수가 아닙니다.</div>
	</c:if>
	
	<h2>조건문(다중 if문)</h2>
	<c:choose>
		<c:when test="${num > 0}">양수</c:when>
		<c:when test="${num < 0}">음수</c:when>
		<c:otherwise>영</c:otherwise>
	</c:choose>
	
	<h2>반복문(일반 for + 향상된 for)</h2>
	
	<% for (int i=1; i<=10; i++) {%>
		<div>숫자: <%= i %></div>
	<% } %>

	<hr>
	
	<c:forEach var="i" begin="1" end="10" step="1">
		<div>숫자: ${i}</div>
	</c:forEach>
	
	<%
		String[] names = {"홍길동", "아무개", "강아지", "고양이", "병아리"};
		pageContext.setAttribute("names", names);
	%>
	<!-- for (String name : names) -->
	<c:forEach var="name" items="${names}">
		<div>${name}</div>
	</c:forEach>
	
	<table>
		<tr>
			<th>이름</th>
			<th>인덱스</th>
			<th>카운트</th>
			<th>Current</th>
			<th>first</th>
			<th>last</th>
		</tr>
		<c:forEach items="${names}" var="name" varStatus="status"> <!--대소문자 구분 잘하기  -->
		
		<c:set var="j" value="0" />
		
		<c:if test="${status.index mod 2 == 0}">
		<tr style="background-color: gold;">
		</c:if>
		
		<c:if test="${status.index mod 2 == 1}">
		<tr>
		</c:if>
		
			<td>${name}</td>
			<td>${status.index} - ${j}</td>
			<td>${status.count}</td>
			<td>${status.current}</td>
			<td>${status.first}</td>
			<td>${status.last}</td>
		</tr>
		<c:set var="j" value="${j + 1}" />
		</c:forEach>
	</table>
	
	<hr>
	
	<c:forTokens var="city" items="서울,인천,대구,부산,제주" delims=",">
		<div>${city}</div>
	</c:forTokens>
	
	<h2>출력문</h2>
	<c:set var="txt" value="안녕하세요. <b>홍길동</b>입니다." />
	<div>txt: ${txt}</div>
	<div>txt: ${txt.replace("<", "&lt;").replace(">", "&gt;")}</div>
	<div>txt: <c:out value="${txt}" /></div> 
	<div>txt: <c:out value="${txt}" escapeXml="true"/></div> 
	<div>txt: <c:out value="${txt}" escapeXml="false"/></div>  
	<!-- &lt;b&gt;홍길동&lt;/b&gt;로 이스케이프해줌 -->
	
	<hr>
	
	<div>http://localhost:8090/jsp/ex20.jsp?name=hong&age=20&gender=m</div>
	
	<c:url var="url1" value="http://localhost:8090/jsp/ex20.jsp">
		<c:param name="name" value="hong"></c:param>
		<c:param name="age" value="20"></c:param>
		<c:param name="gender" value="m"></c:param>
	</c:url>
	<div><a href="${url1}">페이지 이동하기</a></div>
	
	
	<%-- <c:redirect url="ex21.jsp"></c:redirect> --%>
	
	<hr>
	
	<c:set var="price" value="1234567" />
	<div>가격: ${price}원</div>
	<div>가격: <fmt:formatNumber value="${pirce}" />원</div>
	
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>






