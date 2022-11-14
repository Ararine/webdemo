<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="el_02_res.jsp" method="get">
		<p>
			<span>data</span>
			<input type="text" name="data" /> <!-- value 값이 name의 이름으로 전송된다. -->
		</p>
		
		<p>
			<span>location</span>
			<input type="checkbox" name="chk" value="서울" /> 서울
			<input type="checkbox" name="chk" value="부산" /> 부산
			<input type="checkbox" name="chk" value="대전" /> 대전
		</p>
		<input type="submit" value="commit" />
	</form>
	<!-- 주로 -->
</body>
</html>