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
<form action="/ResetPassword" style="width: 300px;" model="ForgetPassword">
		<br><br><br><br><br><br><br><br>
		<center><h3>Forget Password</h3></center>
		<center><h4 style="color: red;">${error}</h4></center>
		<label>User ID*</label><br>
		<input class="inputs" type="text" name="User_Id" required="required" placeholder="User ID" pattern="[A-Z]{3}[0-9]{6}"/>
		<p style="color: red;">${UserId}</p>
		
		<label>Security Question*</label><br>
		<select name="Security_Question" id="Security_Question" style="width: 100%; height: 35px;">
    	<option value="In what city were you born?">In what city were you born?</option>
    	<option value="What is the name of your favorite pet?">What is the name of your favorite pet?</option>
    	<option value="What is the name of your first school?">What is the name of your first school?</option>
  		</select><br><br>
  		
  		<label>Answer*</label><br>
		<input class="inputs" type="text" name="Answer" required="required" placeholder="Answer"/><br><br>
		
		<label>Contact*</label><br>
		<input class="inputs" type="text" name="Contact_Number"  placeholder="Contact" required="required" pattern="[6-9]{1}[0-9]{9}"/><br></br>
		

		<input type="submit" name="Register" style="background-color: #0048D9; width: 100%; color: white; border-radius: 5px; padding-top: 5px; padding-bottom: 5px; font-weight: bold;" value="Submit"/>
		

</form>
</center>

</body>
</html>