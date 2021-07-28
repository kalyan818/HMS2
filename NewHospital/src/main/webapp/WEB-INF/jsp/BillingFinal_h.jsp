<%@page import="com.example.Project.Model.InPateintModel"%>
<%@ include file="HospitalAdmin/header.jspf"%>
<%@ include file="HospitalAdmin/navigation.jspf"%>
<%@ include file="HospitalAdmin/Billing.jspf"%>


			<%
				
						List<InPateintModel> s = (List) request.getAttribute("user");
			%>
		
		

	<center><h2>Billing</h2></center>
<style>

td{
	padding: 10px;
}

</style>


<center><table border="1">
<tr>
<td><table>
		<tr>
			<td>Patient Name</td>
			<td>:<%=s.get(0).getPatient_Name()%></td>
		</tr>
		<tr>
			<td>Patient ID</td>
			<td>:<%=s.get(0).getPATID()%></td>
		</tr>
		<tr>
			<td>Age</td>
			<td>:<%=s.get(0).getAge()%></td>
		</tr>
		<tr>
			<td>Gender</td>
			<td>:<%=s.get(0).getGender()%></td>
		</tr>
		<tr>
			<td>Reason</td>
			<td>:<%=s.get(0).getReason()%></td>
		</tr>
		<tr>
			<td>Date Of Joining</td>
			<td>:<%=s.get(0).getDate_Of_Joining()%></td>
		</tr>
	</table></td>
<td>	<form action="/BillSubmit" model="BillSubmitModel">
	
	<table>
		<tr>
		<td>
			<label>Facilities:&emsp;&emsp;&emsp;</label><p><%=s.get(0).getFacilities()%></p>
		</td>
		<td>
			
		</td>
	
	
		<td>
			<label style="margin-left: 50px;">Doctors:&emsp;&emsp;&emsp;</label><p style="margin-left: 50px;"><%=s.get(0).getDoctors()%></p>
		</td>
		
		<td>
			
		
		<tr>
			<td colspan="2">
			<input type="number" name="AmountFacility" class="form-control" placeholder="Facility Amount" style="width: 200px;"/>
		</td>
		</td>
			<td colspan="2">
			<input type="number" name="AmountDoctors" class="form-control" placeholder="Doctor Amount" style="width: 200px;margin-left: 50px;"/>
		</td>
		
		</tr>
		
		
		
		
		<tr>
		<td>
			<label>Medicine charge:&emsp;&emsp;&emsp;</label>
		</td>
		<td>
			<p></p>
		</td>
		<tr>
		<td colspan="2">
			<input type="number" name="AmountMedicine" class="form-control" placeholder="Medicine Amount" style="width: 200px;"/>
		</td>
		</tr>
	
	
		<tr>
		<td>
			<label>Room charge:&emsp;&emsp;&emsp;</label>
		</td>
		<td>
			<p></p>
		</td>
		<tr>
		<td colspan="2">
			<input type="number" name="AmountRoomCharge" class="form-control" placeholder="Room Charge" style="width: 200px;"/>
		</td>
		</tr>
		<tr>
		<td>
			<label>Date Of Discharge:&emsp;&emsp;&emsp;</label>
		</td>
		<td>
			<p></p>
		</td>
		<tr>
		<td colspan="2">
			<input type="date" name="Date_Of_Discharge" class="form-control" placeholder="Date Of Discharge" style="width: 200px;"/>
		</td>
		</tr>

		<tr>
		<td>
		<input class="btn btn-primary" type="submit" name="Submit" value="Submit" />
		<input type="hidden" name="PATID" value="<%=s.get(0).getPATID()%>" />
		</td>
		</tr>

	</table>

	</form>
	</td>
</tr>

</table>
</center>



	
	
	
	
	
	

	
	</div>
	<%@ include file="HospitalAdmin/footer.jspf"%>