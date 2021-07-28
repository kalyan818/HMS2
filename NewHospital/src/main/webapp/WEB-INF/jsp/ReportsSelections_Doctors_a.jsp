<%@page import="com.example.Project.Model.RegisterDoctorModel"%>
<%@ include file="Admin/header.jspf"%>
<%@ include file="Admin/navigation.jspf"%>
<%@ include file="Admin/Reports.jspf"%>



<center><h2>Doctors</h2></center>
<table class="table table-bordered table-hover">
		<thead>
			<tr>
			<th>ID</th>
			<th>F/L Name</th>
			<th>Gender</th>
			<th>Contact Number</th>
			<th>Email</th>
			<th>Qualification</th>
			<th>Speciality</th>
			<th>Experience</th>
			</tr>
			</thead>
			<%
			
			List<RegisterDoctorModel> s = (List) request.getAttribute("doctors");
			%>
			<%
				for(int j=0;j<s.size();j++){
			%>
			<tr>
			<td><%=s.get(j).getId()%></td>
			<td><%=s.get(j).getFirst_Name()+" "+s.get(j).getLast_Name()%></td>
			<td><%=s.get(j).getGender()%></td>
			<td><%=s.get(j).getContact_Number()%></td>
			<td><%=s.get(j).getEmail()%></td>
			<td><%=s.get(j).getQualification()%></td>
			<td><%=s.get(j).getSpeciality()%></td>
			<td><%=s.get(j).getExperience()%></td>
			</tr>
			<%} %>
	
	
	</table>

</div>






<%@ include file="Admin/footer.jspf"%>
