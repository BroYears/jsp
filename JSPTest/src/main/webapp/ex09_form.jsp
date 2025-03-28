<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK">
	<style>
		body { padding-bottom: 300px; }
	</style>
</head>
<body class="narrow">
	<!-- ex09_form.jsp -->
	<h1>request 객체 사용하기</h1>
	
	<div><%= request %></div>
	
	<h2>폼태그 + POST 방식으로 보내기</h2>
	<form method="POST" action="ex09_ok.jsp">
		<div>문자: <input type="text" name="txt"></div>
		<div>숫자: <input type="number" name="num"></div>
		<div><input type="submit" value="보내기"></div>
	</form>
	
	
	<h2>폼태그 + GET 방식으로 보내기</h2>
	<form method="GET" action="ex09_ok.jsp">
		<div>문자: <input type="text" name="txt"></div>
		<div>숫자: <input type="number" name="num"></div>
		<div><input type="submit" value="보내기"></div>
	</form>
	
	<h2>폼태그없이 데이터 전송하기(+GET)</h2>
	
	<div>
		<a href="ex09_ok.jsp?txt=hong&num=123">페이지 이동하기</a>
	</div>
	
	<div>
		<input type="button" value="클릭" id="btn1">
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		$('#btn1').click(()=>{
			location.href = `ex09_ok.jsp?txt=${document.getElementById('btn1').value}&num=111`;
		});
	</script>
	
	<h2>GET 대량의 데이터</h2>
	
	<div>
	<form method="GET" action="ex09_ok.jsp">
		<textarea name="txt2" class="full"></textarea>
		<button>보내기</button>
	</form>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
	
		$('#btn1').click(()=>{
			location.href = `ex09_ok.jsp?txt=\${document.getElementById('btn1').value}&num=111`;
		});
	
	
</body>
</html>






