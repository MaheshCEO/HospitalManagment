<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String driver=application.getInitParameter("Driver");
String url=application.getInitParameter("url");
String username=application.getInitParameter("username");
String passwd=application.getInitParameter("password");
Class.forName(driver);
Connection con = DriverManager.getConnection(url,username,passwd);
PreparedStatement pst = con.prepareStatement("select * from login where username=? and password=? and role='manager'");
String str =request.getParameter("uname");
String str1=request.getParameter("passwd");
pst.setString(1, str);
pst.setString(2, str1);
ResultSet rs = pst.executeQuery();
if(rs.next())
{
	response.sendRedirect("http://localhost:8088/hospitalManagment/right/ManagerLogic.jsp");
}

%>
</body>
</html>