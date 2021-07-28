<%@page import="com.example.Project.Model.ViewAppointmentModel"%>
<%@page import="java.util.List"%>
<%@ include file="HospitalAdmin/header.jspf"%>
<%@ include file="HospitalAdmin/navigation.jspf"%>
<%@ include file="HospitalAdmin/UpdateTestResult.jspf"%>


		<center><h2>Update Test Result</h2></center> 
		<h3 style="color: red;">${Success}</h3>
		<form action="/UpdateTestResultPatientValues_h"
			modelAttribute="TestResultModel">
			<label>Result 1 <span style="color: red;">*</span></label><br>
			 <input type="text" name="Result1"
				required="required" class="form-control" style="width: 200px;"/><br>
			<br> <label>Result 2 <span style="color: red;">*</span></label><br>
			 <input type="text" name="Result2"
				required="required" class="form-control" style="width: 200px;"/><br>
				 <input type="hidden" name="uniqueId" value="${uniqueId}" />
			<input type="submit" value="submit" class="btn btn-primary"/><br>
		</form>
	</div>
</div>
<%@ include file="HospitalAdmin/footer.jspf"%>