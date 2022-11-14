<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>주석처리</h3>
	<!-- html 주석 - 웹소스에 확인 가능-->
	
	<%-- jsp 주석 - 웹소스에서 확인 불가--%>
	
	<%--
		EL(Expression Language) : 표현 언어
		1. jsp스크립트를 대신해서 속성값을 편리하게 출력할 수 있도록 제공해주는 언어이다.
		2. ${ }
	 --%>
	 
	 <% 
	 	// scope(영역) - 데이터를 참조할 수 있도록 제공해주는 공간
	 	// page-pageContext, request-request, session-session, application-application - 기본객체, 내부객체
	 	
	 	//page영역에 p1이름으로 page값이 저장된다.
	 	pageContext.setAttribute("p1","page"); // ("scope이름", "값") //setAttribute - 페이지 생성 // 한 페이지와 관련
	 	
	 	//request영역에 p2이름으로 request값이 저장된다.
	 	request.setAttribute("p2", "request"); // 한번의 호출
	 	
	 	//session영역에 p3이름으로 session값이 저장된다.
	 	session.setAttribute("p3", "session"); // 하나의 클라이언트
	 	
	 	//application영역에 p4이름으로 application값이 저장된다.
	 	application.setAttribute("p4", "application"); //모든 클라이언트
	 %>
	 
	 <p>
	 <%= pageContext.getAttribute("p1") %> / <%= request.getAttribute("p2") %> /<!-- java를 이용하는 출력 -->
	 <%= session.getAttribute("p3") %> / <%= application.getAttribute("p4") %> <!-- getAttribute를 통해 불러온다. -->
	 </p>
	 
	 <p>
	 	${pageScope.p1} / ${requestScope.p2} / ${sessionScope.p3} / ${applicationScope.p4} <!-- jsp에서 제공되는 표현언어 -->
	 </p>
	 
	 <p>
	 <!-- 
	 	속성값을 가져올 때 영역을 명시하지 않으면 page-request-session-application 순으로 검색한다.
	  -->
	 ${p3}
	 </p>
</body>
</html>