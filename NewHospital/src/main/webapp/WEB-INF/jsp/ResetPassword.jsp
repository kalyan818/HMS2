<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <style><%@include file="/WEB-INF/css/patientRegister.css"%></style>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<center>
<form action="/UpdatePassword" style="width: 300px;"  model="afterResgisterModel">
		<br><br><br><br><br><br><br><br>
		<center><h3>Forget Password</h3></center>
	
  		<label>New Password*</label><br>
		<input class="inputs" type="text" name="password" required="required" placeholder="Password" minlength="8"/><br><br>
		
		<label>Confirm New Password*</label><br>
		<input class="inputs" type="password" name="confirmpassword" required="required" placeholder="Confirm New Password" minlength="8"/><br><br>
		<input type="hidden" name="userid" value="${userid}"/>

		<input type="submit" name="Submit" style="background-color: #0048D9; width: 100%; color: white; border-radius: 5px; padding-top: 5px; padding-bottom: 5px; font-weight: bold;" value="Submit"/>
		<p style="color: red;">${error}</p>

</form>
</center>

</body>
</html>