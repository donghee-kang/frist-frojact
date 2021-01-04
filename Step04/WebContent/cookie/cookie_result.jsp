<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//쿠키를 읽어 올떄는 배열로 읽어온다.
Cookie[] cookies = request.getCookies();
  for(int i =0;i<cookies.length;i++)
	 out.write(cookies[i].getName()+":"+ cookies[i].getValue()+"<br>");
    out.write(session.getId()+"<br>"); //현재 웹 브라우저 세션 ID값

%>

<a href="cookie_seting.jsp">쿠키 생성 페이지로 이동</a>
</body>
</html>