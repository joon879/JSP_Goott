<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>boardDelProc</h3>
	
	<%
	String seq = request.getParameter("c");
	String sql = "delete from guroboard where seq =" + seq;
	
	//DB 연결
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "hr";
	String pw = "123456";
	Connection con = DriverManager.getConnection(url, user, pw);
	
	//실행
	PreparedStatement pstmt = con.prepareStatement(sql);
	int del = pstmt.executeUpdate();

	//System.out.println("del cnt: "+del);
	if (del > 0) {
		response.sendRedirect("guroboard.jsp");
	} else {
		out.write("삭제오류");
	}
	
	
	
	%>
</body>
</html>