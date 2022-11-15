<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_14_formatNumber</title>
</head>
<body>
	<%-- 숫자형식을 지정해주는 fromatNumber요소 --%>
	<c:set var="num1" value="10000" />
	<c:set var="num2" value="0.2" />
	
	<!-- type속성은 number, currency, percent을 사용할 수 있다. -->
	<p>
		<fmt:formatNumber value="${num1}" type="number"/> <!-- 1000단위로 출력 -->
	</p>
	
	<p>
		<fmt:formatNumber value="${num1}" type="currency"/> <!-- 통화 단위로 출력 -->
	</p>
	
	<p>
		<!-- 20% -->
		<fmt:formatNumber value="${num2}" type="percent" /> <!-- 전체 값이 1이다 -->
	</p>
	
	<!-- https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/text/DecimalFormat.html -->
	<!-- java.text.DecimalFormat를 참조해서 pattern을 설정한다. -->
	<p>
		<!-- 10,000.00 -->
		<fmt:formatNumber value="${num1}" type="number" pattern="0,000.00"/> <!-- pattern : 형식을 나타내 줄 수 있음 -->
	</p>
	
	<p>
		<fmt:formatNumber value="${num1}" currencySymbol="$" type="currency" />
	</p>
</body>
</html>