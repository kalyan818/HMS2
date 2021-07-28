<%@page import="com.example.Project.Model.RegisterHospitalAdminModel"%>
<%@ include file="Admin/header.jspf"%>
<%@ include file="Admin/navigation.jspf"%>
<%@ include file="Admin/Reports.jspf"%>




<center><h2>Hospital</h2></center>
<table class="table table-bordered table-hover">
		<thead>
			<tr>
			<th>ID</th>
			<th>Hospital Name</th>
			<th>Address</th>
			<th>City</th>
			<th>State</th>
			<th>Zip</th>
			<th>Contact Number</th>
			<th>Fax Number</th>
			<th>Website</th>
			</tr>
			</thead>
			<%
			List<RegisterHospitalAdminModel> s = (List) request.getAttribute("hospital");
			%>
			<%
				for(int j=0;j<s.size();j++){
			%>
			<tr>
			<td><%=s.get(j).getId()%></td>
			<td><%=s.get(j).getHospital_Name()%></td>
			<td><%=s.get(j).getAddress_Lane1()+""+s.get(j).getAddress_Lane2()+""+s.get(j).getAddress_Lane3()%></td>
			<td><%=s.get(j).getCity()%></td>
			<td><%=s.get(j).getState()%></td>
			<td><%=s.get(j).getZip()%></td>
			<td><%=s.get(j).getHospital_Contact_Number()%></td>
			<td><%=s.get(j).getHospital_Fax_Number()%></td>
			<td><%=s.get(j).getHospital_Website()%></td>
			</tr>
			<%} %>
	
	
	</table>
</div>






<%@ include file="Admin/footer.jspf"%>
