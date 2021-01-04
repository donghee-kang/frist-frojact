<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conpig.DBManager"%>
<%@page import="conpig.DBConfig"%>
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
String search = request.getParameter("name");
String sql ="select id, name, pass, age, grade_name from member me, grade_list no where no.grade = me.grade and id like ? and pass like ?";

PreparedStatement pstmt = null;
ResultSet rs = null;
String result = "";
pstmt = DBManager.getInstance().getConn().prepareStatement(sql);
pstmt.setString(1, search);
rs = pstmt.executeQuery();
while(rs.next()){
	
	result += String.format("%s %s %d %s", rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getInt(5));
}
out.write(result);
DBManager.getInstance().close(pstmt, rs);
%>
</body>
</html>