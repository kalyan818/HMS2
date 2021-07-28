<%@ include file="Admin/header.jspf"%>
<%@ include file="Admin/navigation.jspf"%>
<%@ include file="Admin/Reports.jspf"%>




<form action="/ReportsSelections_a" model="ReportSelection" method="get">



<label>Select from Dropdown <span style="color: red;">*</span></label><br>
<select name="selection" style="width: 200px; height: 40px;">
	<option value="Hospital">Hospital</option>
	<option value="Doctors">Doctors</option>
	<option value="Service">Service</option>
</select><br><br>

<input class="btn btn-primary" type="Submit" value="Submit"></input>


</form>

</div>






<%@ include file="Admin/footer.jspf"%>
