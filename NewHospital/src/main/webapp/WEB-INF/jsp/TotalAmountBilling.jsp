<%@page import="com.example.Project.Model.BillSubmitModel"%>
<%@page import="com.example.Project.Model.InPateintModel"%>
<%@ include file="HospitalAdmin/header.jspf"%>
<%@ include file="HospitalAdmin/navigation.jspf"%>
<%@ include file="HospitalAdmin/Billing.jspf"%>


			<%
				
						BillSubmitModel s = (BillSubmitModel)request.getAttribute("billing");
			%>
		
		

	<center><h2>Billing</h2></center>
<style>

td{
	padding: 10px;
}

</style>


<center>

<table border="1">

		<tr>
			<td>Patient ID</td>
			<td>:<%=s.getPATID()%></td>
		</tr>
		<tr>
			<td>Facilities</td>
			<td>:<%=s.getAmountFacility()%></td>
		</tr>
		<tr>
			<td>Doctors</td>
			<td>:<%=s.getAmountDoctors()%></td>
		</tr>
		<tr>
			<td>Medicine charge</td>
			<td>:<%=s.getAmountMedicine()%></td>
		</tr>
		<tr>
			<td>Room Charge</td>
			<td>:<%=s.getAmountRoomCharge()%></td>
		</tr>
		<tr>
			<td>Date Of Discharge</td>
			<td>:<%=s.getDate_Of_Discharge()%></td>
		</tr>
		<tr>
			<td>Total</td>
			<%
				
						long s1 =  Long.parseLong(s.getAmountFacility())+Long.parseLong(s.getAmountDoctors())+Long.parseLong(s.getAmountMedicine())+Long.parseLong(s.getAmountRoomCharge());
			%>
			<td>:<%=s1%></td>
		</tr>
		<tr>
			<center><td colspan="2"><a href="/RemovePatient?PATID=<%=s.getPATID()%>&Date_Of_Discharge=<%=s.getDate_Of_Discharge()%>"><Button class="btn btn-primary">Submit</Button></a></td></center>
		</tr>
	</table><br>

</center>



	</div>
	<%@ include file="HospitalAdmin/footer.jspf"%>