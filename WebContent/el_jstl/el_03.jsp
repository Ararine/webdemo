<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el_03</title>
</head>
<body>

<%--
	연산자 사용
	1. 논리 타입
	2. 정수 타입
	3. 실수 타일
	4. 문자열 타입
	5. 널타입
 --%>
 
 <p>${3+2}</p>
 <p>${3>2}</p>
 <p>${10==10 && 9!=7}</p>
 <p>${2%2==0 ? 'even' : 'odd'}</p> <!-- '' 든 ""든 관계없음 -->
 <p>${empty param.str}</p> <!-- 비어있는지 확인 비면 true 아니면 false -->
 <p>${"java"=="JAVA"}</p> <!-- 대소문자 구별 -->
 
</body>
</html>

<!-- http://localhost:8090/webdemo/el_jstl/el_03.jsp?str=홍길동 -->