<%@page import="com.example.Project.Model.RegisterHospitalAdminModel"%>
<%@ include file="HospitalAdmin/header.jspf" %>
<%@ include file="HospitalAdmin/navigation.jspf" %>
<%@ include file="HospitalAdmin/TieUp.jspf" %>


<center><h2>Tie Up</h2></center>
	<h3 style="color: red;">${ status}</h3>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
					<th>Hospital Name</th>
					<th>Tie Up</th>
					
			</tr>
			</thead>
	
			<%
					List<RegisterHospitalAdminModel> s1 = (List) request.getAttribute("hospitals");
			%>
			<%
				for(int j=0;j<s1.size();j++){
			%>
			<tr>
			<td><%=s1.get(j).getHospital_Name()%></td>
			<td><a href="/TieUpHospital?Hos=<%=s1.get(j).getId().toString()%>&HosName=<%=s1.get(j).getHospital_Name().toString()%>"><button class="btn btn-success">Tie Up</button></a></td>
			</tr>
			<%}%>
	</table>





</div>
<%@ include file="HospitalAdmin/footer.jspf" %>