<%@page import="java.sql.ResultSetMetaData"%>
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
PreparedStatement pst = con.prepareStatement("select * from hospital where typ=? ");
String str =request.getParameter("type");
pst.setString(1, str);
ResultSet rs = pst.executeQuery();
ResultSetMetaData  rsmd = rs.getMetaData();
out.print("<table align=center border=5>");
for(int i=1; i<rsmd.getColumnCount(); i++)
{
	out.println("<th>"+rsmd.getColumnName(i)+"</th>");
}
while(rs.next())
{  					
	out.println("<tr>");
	String firstname="";
	for(int i=1; i<rsmd.getColumnCount(); i++)
	{		firstname=rs.getString(1);			
    out.println("<td>"+rs.getString(i)+"</td>");
	}
	out.print("</tr>");	                
}




/*if(rs.next())
{
		/* out.print("<table border=5>");
		for(int i=0; i<rsmd.getColumnCount(); i++)
		{
			out.println("<th>"+rsmd.getColumnName(i)+"</th>");
		}
		
	out.println("<table><tr>");
		out.println("Reports of all" +str+"<br/>");
	for(int i=1; i<rsmd.getColumnCount(); i++)
	{					
  out.println("<tr><td>"+rs.getString(i)+"</td></tr>");
	}
	out.print("</tr>");                
}
else
{
	 out.println("<h1>no records found</h1>");
}*/
%>
</body>
</html>