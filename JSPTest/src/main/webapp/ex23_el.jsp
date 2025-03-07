<%@page import="com.test.java.Student"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
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
	<!-- ex23_el.jsp -->
	<h1>EL</h1>
	
	<!-- 
		
		<%-- <%= 100 %> --%> -> out.println()
		
		톰캣이 먼저보고 브라우저에서 그 다음에 보는 거 생각하기
		
		EL, 표현식 언어
		-  평범한 출력문이 아니라(아무값이나 출력하는 용도가 아니다.)
			내장 객체의 컬렉션을 출력하는 전용출력문이다.
			(pageContext, request, session, application)
		
		
		1. 코드 가독성 향상
			- Java 코드와 HTML 코드를 완전 분리하자
			
		2. 간편한 문법
			- 
			
		3. 보안 강화
			- null 처리 등
			
		4. 코드 재사용 향상
		
	-->
	
	<% 
	
		//자바 변수(데이터) > 화면 출력!!
		int a = 10;
		
		//내장 객체
		//- 키가 중복되면 EL은 영역이 작은 객체부터 우선한다.
		pageContext.setAttribute("b", 20);
		request.setAttribute("c", 30);
		session.setAttribute("d", 40);
		session.setAttribute("b", 200);
	
	%>	
	<h2>표현식</h2>
	<div>a: <%= a %></div>
	<div>b: <%= pageContext.getAttribute("b") %></div>
	<div>b: <%= session.getAttribute("b") %></div>
	<div>c: <%= request.getAttribute("c") %></div>
	<div>d: <%= session.getAttribute("d") %></div>
	
	<h2>EL</h2>
	<div>a: ${a}</div>
	<div>b: ${pageContext.getAttribute("b") }</div>
	<div>pageContext.b: ${pageScope.b}</div>
	<div>session.b: ${sessionScope.b}</div>	
	<div>c: ${requestScope.c}</div>
	<div>d: ${sessionScope.d}</div>
	<!-- 가져올 키 값만 -->
	<%--
	<div>c: ${request.getAttribute("c") }</div>
	<div>d: ${session.getAttribute("d") }</div>
	--%>
	<%
		pageContext.setAttribute("n1", 10);
		pageContext.setAttribute("n2", 3);
	%>
	<h2>EL 기능</h2>
	
	<h3>EL 연산 기능</h3>
	
	<div>n1 + 10 = <%= (int)pageContext.getAttribute("n1") + 10 %></div>
	<div>n1 + 10 = ${n1} + 10</div> <!-- 연산 아님 {} 까지만 읽음 -->
	<div>n1 + 10 = ${n1 + 10}</div>
	
	<div>n1 + n2 = <%= (int)pageContext.getAttribute("n1") + (int)pageContext.getAttribute("n2") %></div>
	<div>n1 + n2 = ${n1} + ${n2}</div>
	
	<div>n1 + n2 = ${n1 + n2}</div>
	<div>n1 - n2 = ${n1 - n2}</div>
	<div>n1 * n2 = ${n1 * n2}</div>
	<div>n1 / n2 = ${n1 / n2}</div>
	<div>n1 % n2 = ${n1 % n2}</div>
	<div>n1 mod n2 = ${n1 mod n2}</div>
	
	<hr>
	
	<div>n1 > n2 = ${n1 > n2}</div>
	<div>n1 &gt; n2 = ${n1 gt n2}</div>
	
	<div>n1 < n2 = ${n1 < n2}</div>
	<div>n1 &lt; n2 = ${n1 lt n2}</div>
	
	<div>n1 >= n2 = ${n1 >= n2}</div>
	<div>n1 &ge; n2 = ${n1 ge n2}</div>
	
	<div>n1 == n2 = ${n1 == n2}</div>
	<div>n1 == n2 = ${n1 eq n2}</div>
	
	<div>n1 != N2 = ${N1 != N2}</div>
	<div>n1 != N2 = ${N1 ne N2}</div>
	
	<hr>
	
	<div>${true && true}</div>
	<div>${true || true} > short-circuit</div>
	<div>${!true}</div>
	
	<hr>
	
	<div>${n1 > 0 ? "양수" : "음수" }</div>
	
	<hr>
	
	<div>${"홍길동".equals("홍길동")}</div>
	<div>${"홍길동" == "홍길동"}</div>
	
	
	<%
		HashMap<String,String> map = new HashMap<>();
		map.put("name", "홍길동");
		map.put("age", "20");
		map.put("address", "서울시");
		
		pageContext.setAttribute("map", map);
	%>
	<h3>객체 멤버 접근</h3>
	
	<div>이름: <%= map.get("name") %></div>
	<div>나이: <%= map.get("age") %></div>
	<div>주소: <%= map.get("address") %></div>
	
	<div>${map}</div>
	<div>이름: ${map.get("name")}</div>
	<div>이름: ${map["name"]} **</div> <!-- -등 인식하기 힘든 문자열 쓸 때 -->
	<div>이름: ${map.name} ***</div>
	
	<div>나이: ${map.age - 1}</div>
	<div>주소: ${map.address}</div>
	
	<%
		Student s1 = new Student();
	
		s1.setName("아무개");
		s1.setAge(25);
		s1.setAddress("서울시");
		
		pageContext.setAttribute("s1", s1);
	
	%>
	
	<div>이름: <%= s1.getName() %></div>
	<div>나이: <%= s1.getAge() %></div>
	<div>주소: <%= s1.getTest() %></div>
	
	
	<div>이름: ${s1.getName()}</div>
	<div>이름: ${s1.name}</div> <!-- 메서드 이름이 변수처럼 -->
	<div>나이: ${s1["age"]}</div>
	 
	<!-- 
		javax.el.PropertyNotFoundException: [com.test.java.Student] 유형에서 [address] 특성을 읽을 수 없습니다.
		<%-- getAddress  address 이런 식 --%>
	-->
	
	<div>주소: ${s1.test}</div>
	
	<%
		Student s2 = null;
		pageContext.setAttribute("s2", s2);
		
		String s3 = "";
		pageContext.setAttribute("s3", s3);
	%>
	<div>${s2 == null}</div>
	<div>${s3 == null}</div>
	<div>${s3 == ""}</div>	
	
	<div>${empty s2}</div>
	<div>${empty s3}</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		let str = '${num}';
	</script>
</body>
</html>
















