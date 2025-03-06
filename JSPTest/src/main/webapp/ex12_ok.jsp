<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	String width = request.getParameter("width");
	String height = request.getParameter("height");
	String bgcolor = request.getParameter("bgcolor");
	String txtcolor = request.getParameter("txtcolor");
	String txtsize = request.getParameter("txtsize");
	String txt = request.getParameter("txt");
	String leftspace = request.getParameter("leftspace");
	String topspace = request.getParameter("topspace");
	String icon = request.getParameter("icon");
	String isborder = request.getParameter("isborder");
	String borderwidth = request.getParameter("borderwidth");
	String bordercolor = request.getParameter("bordercolor");
	String borderstyle = request.getParameter("borderstyle");
	String borderradius = request.getParameter("borderradius");
	
	int count = Integer.parseInt(request.getParameter("count"));


%>
<!DOCTYPE html>  
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK">
	<style>
		.button {
			padding-left: 0px;
		}
		.button::before {
			content: none;
		}
	</style>
</head>
<body>
	<!-- ex12_ok.jsp -->
	<h1>결과</h1>
	
	<table class="vertical">
		<tr>
		</tr>
	</table>
	<%-- <div><input type="button" value="돌아가기" <%= onclick= location.href='./ex12_form.jsp';%>></div> --%>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
	
	</script>
</body>
</html>