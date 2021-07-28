<%@page import="com.example.Project.Model.ViewAppointmentModel"%>
<%@ include file="HospitalAdmin/header.jspf" %>
<%@ include file="HospitalAdmin/navigation.jspf" %>
<%@ include file="HospitalAdmin/PatientRecord.jspf"%>




<center><h2>View Patient Record</h2></center>
<table class="table table-bordered table-hover">
		<thead>
			<tr>
					<th>Patient Id</th>
					<th>Facility</th>
					<th>Date</th>
					<th>Time</th>
					<th>Result1</th>
					<th>Result2</th>
			</tr>
			</thead>
	
			<%
					List<ViewAppointmentModel> s1 = (List) request.getAttribute("model");
			%>
			<%
				for(int j=0;j<s1.size();j++){
					if(s1.get(j).getStatus().equals("Approve")){
			%>
			<tr>
			<td><%=s1.get(j).getPATID()%></td>
			<td><%=s1.get(j).getFacility()%></td>
			<td><%=s1.get(j).getDate()%></td>
			<td><%=s1.get(j).getTime()%></td>
			<td><%=s1.get(j).getResult1()%></td>
			<td><%=s1.get(j).getResult2()%></td>
			</tr>
			<%}
			}%>
	</table>


</div>
<div class="six">



<%@ include file="Patient/footer.jspf"%>