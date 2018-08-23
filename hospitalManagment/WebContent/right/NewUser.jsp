<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function check()
{
	if(document.getElementById("fname").value =="" ||
		document.getElementById("lname").value =="" ||
		document.getElementById("desg").value =="" ||
		document.getElementById("quali").value =="" ||
		document.getElementById("speci").value ==""||
		document.getElementById("exp").value =="" ||
		document.getElementById("foe").value =="" ||
		document.getElementById("univer").value =="" ||
		document.getElementById("mble").value ==""||
		document.getElementById("mail").value =="" ||
		document.getElementById("gender").value =="" ||
		document.getElementById("dob").value =="" ||
		document.getElementById("doj").value =="")
		{
		alert("Enter the values");
		return false;	
		}
}
</script>
<body>
<form action="http://localhost:8088/hospitalManagment/right/CreateNewUserLogic.jsp" method="get" onsubmit="return check()" >
<table>
<tr align="left">
<td>FirstName</td><td><input type="text" name="fname"><br/></td>
<td>LastName</td><td><input type="text" name="lname"></td>
</tr>
<tr align="left">
<td>Designation</td><td><input type="text" name="desg"><br/></td>
<td>Qualification</td><td><input type="text" name="quali"></td>
</tr>
<tr>
<td>Specilization</td><td><input type="text" name="speci"><br/></td>
<td>Experience</td><td><input type="text" name="exp"></td>
</tr>
<tr>
<td>Field of Experience</td><td><input type="text" name="foe"><br/></td>
<td>University</td><td><input type="text" name="univer"></td>
</tr>
<tr>
<td>Mobile</td><td><input type="text" name="mble"><br/></td>
<td>Email</td><td><input type="text" name="mail"></td>
</tr>
<tr>
<td>Sex</td><td><input type="text" name="gender"><br/></td>
<td>Date of Birth</td><td><input type="text" name="dob"></td>
</tr>
<tr>
<td>Date of Join</td><td><input type="text" name="doj"><br/></td>
<td>Type</td><td>
<select>
  <option value="client">Client</option>
  <option value="manaer">Manager</option>
  <option value="admin">Admin</option>
  <option value="official">Official</option>
</select></td>
</tr>
<tr>
<td>
Password</td><td><input type="password" name="passwd"></td>
<td></td><td><input type="submit" value="signup"></td>
</tr>
</table>
</form>
</body>
</html>