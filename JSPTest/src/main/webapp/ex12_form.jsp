<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK">
	<script src="https://kit.fontawesome.com/7abd1088b7.js" crossorigin="anonymous"></script>
	<style>
		#borderbox {
			display: none;
		}
		#borderbox > div {
			margin-bottom: 5px;
		}
		input[type=color] {
			height: 35px;
		}
	</style>
</head>
<body>
	<!-- ex12_form.jsp -->
	<h1>버튼 만들기</h1>
	
	<table id="tbl1" class="vertical">
		<tr>
			<th>너비(px)</th>
			<td><input type="number" min="20" max="300" value="120" name="width"></td>
		</tr>
		<tr>
			<th>높이(px)</th>
			<td><input type="number" min="10" max="200" value="30" name="height"></td>
		</tr>
		<tr>
			<th>텍스트</th>
			<td><input type="text" value="Button" name="txt"></td>
		</tr>
		<tr>
			<th>배경색</th>
			<td><input type="color" value="#FFFFFF" name="bgcolor"></td>
		</tr>
		<tr>
			<th>글자색</th>
			<td><input type="color" value="#000000" name="txtcolor"></td>
		</tr>
		<tr>
			<th>글자 크기(px)</th>
			<td><input type="number" min="10" max="100" value="16" name="txtsize"></td>
		</tr>
		<tr>
			<th>버튼 개수(ea)</th>
			<td><input type="number" min="1" max="30" value="1" name="count"></td>
		</tr>
		<tr>
			<th>버튼 간격</th>
			<td>
				<div>
					좌우 간격 : 
					<input type="range" min="0" max="50" value="0" name="leftspace">
				</div>
				<div>
					상하 간격 : 
					<input type="range" min="0" max="50" value="0" name="leftspace">
				</div>
			</td>
		</tr>
		<tr>
			<th>아이콘</th>
			<td>
				<input type="radio" name="icon" value="none" checked>
				없음
				<input type="radio" name="icon" value="fa-solid fa-house" >
				<i class="fa-solid fa-house"></i>
				<input type="radio" name="icon" value="fa-solid fa-image" >
				<i class="fa-solid fa-image"></i>
				<input type="radio" name="icon" value="fa-solid fa-location-dot" >
				<i class="fa-solid fa-location-dot"></i>
				<input type="radio" name="icon" value="fa-brands fa-github" >
				<i class="fa-brands fa-github"></i>
				<input type="radio" name="icon" value="fa-solid fa-paperclip">
				<i class="fa-solid fa-paperclip"></i>
			</td>
		</tr>
		<tr>
			<th>테두리</th>
			<td>
				<div style="margin-bottom: 10px;">
					<select class="form-control sm" id="isborder" name="isborder">
						<option value="n">감추기</option>
						<option value="y">보이기</option>			
					</select>
				</div>
				<div id="borderbox">
					<div>
						두께(px) : <input type="number" min="0" max="10" value="1" class="form-cintrol sm inline right" name="borderwidth">
					</div>
					<div>
						색상 : <input type="color" value="#000000" class="form-cintrol sm" name="bordercolor">
					</div>
					<div>
						스타일 : 
						<select class="form-cintrol sm inline" name="borderstyle">
							<option value="solid">실선</option>
							<option value="dashed">쇄선</option>
							<option value="dotted">점선</option>
						</select>
					</div>
					<div>
						모서리(px) : <input type= "number" min="0" max="50" value="0" class="form-cintrol sm inline right" name="borderradius">
					</div>
				</div>
			</td>
		</tr>
	</table>
	<div><input type="button" name="btn1" value="만들기"></div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>

		$("#isborder").change(function() {
			if ($(this).val() == "y") {
				$("#borderbox").show();
			} else {
				$("#borderbox").hide();
			}
		});

	
	</script>
</body>
</html>