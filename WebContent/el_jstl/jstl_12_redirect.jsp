<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_12_redirect</title>
</head>
<body>
	<%-- sendRedirect()과 같은 기능을 제공하는 태그 --%>
	<%-- 로그인 실패시 로그인 화면을 다시 띄울 때 --%>
	<c:redirect url='el_03.jsp' />
	
	
</body>
</html>