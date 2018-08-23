<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="http://localhost:8088/hospitalManagment/right/ReportResultLogic.jsp" method="get">
<center>
<h3>Select Type Of Employee::
<select name="type">
<option value="client">Client</option>
  <option value="admina">Admin</option>
  <option value="doctor">Doctor</option>
  <option value="manager">Manager</option>
  <option value="official">Official</option>
</select></h3>
<input type="submit" value="Get Report">
</center>
</form>
</body>
</html>