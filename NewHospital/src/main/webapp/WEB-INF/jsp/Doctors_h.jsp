<%@page import="com.example.Project.Model.RegisterDoctorModel"%>
<%@page import="java.util.List"%>
<%@ include file="HospitalAdmin/header.jspf"%>
<%@ include file="HospitalAdmin/navigation.jspf"%>
<%@ include file="HospitalAdmin/Doctors.jspf"%>

	
			<center><h3>Doctors Availiable</h3></center>

			<table class="table table-bordered table-hover">
				<tr>
					<th>Doctor Name</th>
					<th>Contact Number</th>
					<th>Qualification</th>
					<th>Speciality</th>
					<th>Experience</th>
					<th>Add</th>
				</tr>
				<tr>
					<%
					int i = 1;
					List<RegisterDoctorModel> s1 = (List) request.getAttribute("registeredDoctors");
					%>
					<%
					for (int j = 0; j < s1.size(); j++) {
					%>
				
				<tr>
					<td><%=s1.get(j).getFirst_Name() + " " + s1.get(j).getLast_Name()%></td>
					<td><%=s1.get(j).getContact_Number()%></td>
					<td><%=s1.get(j).getQualification()%></td>
					<td><%=s1.get(j).getSpeciality()%></td>
					<td><%=s1.get(j).getExperience()%></td>
					<td><a href="/Doctors1_h?select=<%=s1.get(j).getId()%>"><button
								class="btn btn-success">ADD</button></a></td>
				</tr>
				<%
				}
				%>
			</table>
			<br>
			<br>

	
			<center><h3>Doctors In Our Hospital</h3></center>
			<table class="table table-bordered table-hover">
				<tr>
					<th>Doctor Name</th>
					<th>Contact Number</th>
					<th>Qualification</th>
					<th>Speciality</th>
					<th>Experience</th>
					<th>Remove</th>
				</tr>
				<tr>
					<%
					int j = 1;
					List<RegisterDoctorModel> s2 = (List) request.getAttribute("DoctorsInHospital");
					%>
					<%
					for (int m = 0; m < s2.size(); m++) {
					%>
				
				<tr>
					<td><%=s2.get(m).getFirst_Name() + " " + s2.get(m).getLast_Name()%></td>
					<td><%=s2.get(m).getContact_Number()%></td>
					<td><%=s2.get(m).getQualification()%></td>
					<td><%=s2.get(m).getSpeciality()%></td>
					<td><%=s2.get(m).getExperience()%></td>
					<td><a href="/Doctors2_h?deselect=<%=s2.get(m).getId()%>"><button
								class="btn btn-danger">Remove</button></a></td>
				</tr>
				<%} %>
				</tr>
			</table>
</div>
		<%@ include file="HospitalAdmin/footer.jspf"%>