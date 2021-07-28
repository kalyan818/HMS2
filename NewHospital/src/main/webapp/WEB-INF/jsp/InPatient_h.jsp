<%@ include file="HospitalAdmin/header.jspf"%>
<%@ include file="HospitalAdmin/navigation.jspf"%>
<%@ include file="HospitalAdmin/InPatient.jspf"%>


<style>
table, th, td {
  padding-left: 50px;
  padding-right: 50px;
  padding-top: 20px;
  padding-top: 20px;
}

span{
	color: red;
}
.form-control{
width: 250px;
}


</style>





	<h1>Create In Patient</h1>
	<h3 style="color: red;">${Sucess}</h3><br>
	
	<form action="/InPatientSubmit" method="GET" model="InPatientModel">
	<table >
		<tr>
		<td><label>Patient Name <span>*</span></label>
			<input type="text" name="Patient_Name" required="required" class="form-control" placeholder="PatientName"/>
			<p style="color: red; font-size: 14px;">&emsp;</p>
		</td>
			<td><label>Patient Id <span>*</span></label>
			<input type="text" name="PATID" required="required" class="form-control" placeholder="PatientId" pattern="[A-Z]{3}[0-9]{6}"/>
			<p style="color: red; font-size: 14px;">&emsp;${PatientNotAvailiable }</p>
		</td>
		<tr>	
		<tr>
		<td><label>Gender <span>*</span></label><br>
			<input type="radio" name="Gender" required="required" class="form-check-input" value="Male"/> Male
			<input type="radio" name="Gender" required="required" class="form-check-input" value="Female"/> Female
			<input type="radio" name="Gender" required="required" class="form-check-input" value="Other"/> Other
		</td>
			<td><label>Age <span>*</span></label>
			<input type="number" name="Age" required="required" class="form-control" placeholder="Age"/>
		</td>
		<tr>
		<tr>
		<td><label>Date of joining <span>*</span></label><br>
			<input type="date" name="Date_Of_Joining" required="required" class="form-control"/> 
		</td>
			<td><label>Reason <span>*</span></label>
			<input type="text" name="Reason" required="required" class="form-control" placeholder="Reason"/>
		</td>
		<tr>	
		<tr>
		<td colspan="2">
		<center> <input class="btn btn-primary" type="submit" name="Submit" value="Submit" /></center>
			
		</td>
		
		<tr>	
	
	
	</table>
	
	
	</form>



</div>
<%@ include file="HospitalAdmin/footer.jspf"%>