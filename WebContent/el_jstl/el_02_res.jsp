<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el_02_res.jsp</title>
</head>
<body>
<!-- data=홍길동%chk=서울%chk=부산 -->

<% //scriptlet
	String data = request.getParameter("data"); //하나가 넘어올 때 - getParameter
	out.print("<p>" + data + "</p>"); //scriptlet에서 바로 출력하는 방법 //view처리를 위해 사용
%>

<p> <%=data%> </p> <!-- scriptlet에서 바로 출력이 안되기 때문에 밖에서 출력하는 방법 - 표현식 -->

<p> ${param.data} </p> <!-- 표현언어를 통해 출력 -->

<%
	String[] chk = request.getParameterValues("chk"); //여러개 값이 넘어올 때 - getParameterValues
	if(chk!=null) {
		for(String sn : chk)
			out.print("<p>" + sn + "</p>");
	}
%>

<p>${paramValues.chk[0]}</p>
<p>${paramValues.chk[1]}</p>
<p>${paramValues.chk[2]}</p>
</body>
</html>