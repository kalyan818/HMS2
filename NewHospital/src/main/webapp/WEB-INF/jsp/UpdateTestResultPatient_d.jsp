<%@page import="com.example.Project.Model.ViewAppointmentModel"%>
<%@page import="java.util.List"%>
<%@ include file="Doctor/header.jspf" %>
<%@ include file="Doctor/navigation.jspf" %>
<%@ include file="Doctor/UpdateTreatment.jspf" %>


		<center><h2>Update Test Result</h2></center>
		<h3 style="color: red;">${Success}</h3>
		<form action="/UpdateTestResultPatientValues_d"
			modelAttribute="TestResultModel">
			<label>Treatment <span style="color: red;">*</span></label> 
			<input type="text" name="Result1"
				required="required" class="form-control" style="width: 200px;" /><br>
			<br> <label>Prescription <span style="color: red;">*</span></label>
			<input type="text" name="Result2"
				required="required" class="form-control" style="width: 200px;"/><br>
			 <input type="hidden" name="uniqueId" value="${uniqueId}" />
			<input type="submit" /><br>

		</form>
	</div>

	<%@ include file="HospitalAdmin/footer.jspf"%>