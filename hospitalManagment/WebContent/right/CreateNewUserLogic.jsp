<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
<%
String driver=application.getInitParameter("Driver");
String url=application.getInitParameter("url");
String username=application.getInitParameter("username");
String passwd=application.getInitParameter("password");

Class.forName(driver);
Connection con = DriverManager.getConnection(url,username,passwd);
PreparedStatement pst = con.prepareStatement("insert into hospital values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
String firstname =request.getParameter("fname");
String lastname=request.getParameter("lname");
String desgnation=request.getParameter("desg");
String qualification=request.getParameter("quali");
String specilization =request.getParameter("speci");
String experince=request.getParameter("exp");
String foexepirence=request.getParameter("foe");
String university=request.getParameter("univer");
String mobile=request.getParameter("mble");
String mailid=request.getParameter("mail");
String gender=request.getParameter("gender");
String dateofb =request.getParameter("dob");
String dateofj=request.getParameter("doj");
String typee=request.getParameter("type");
String paswd=request.getParameter("passwd");
pst.setString(1, firstname);
pst.setString(2, lastname);
pst.setString(3, desgnation);
pst.setString(4, qualification);
pst.setString(5, specilization);
pst.setString(6, experince);
pst.setString(7, foexepirence);
pst.setString(8, university);
pst.setString(9, mobile);
pst.setString(10, mailid);
pst.setString(11, gender);
pst.setString(12, dateofb);
pst.setString(13,dateofj);
pst.setString(14, typee);
pst.setString(15, paswd);
int rs=pst.executeUpdate();
out.print("User created ");
%>
</body>
</html>