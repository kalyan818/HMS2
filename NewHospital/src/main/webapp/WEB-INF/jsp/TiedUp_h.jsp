<%@page import="com.example.Project.Model.TieUpModel"%>
<%@page import="com.example.Project.Model.RegisterHospitalAdminModel"%>
<%@ include file="HospitalAdmin/header.jspf" %>
<%@ include file="HospitalAdmin/navigation.jspf" %>
<%@ include file="HospitalAdmin/TiedUp.jspf" %>


<center><h2>Tied Up</h2></center>
	<h3 style="color: red;">${ status}</h3>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
					<th>Hospital Name</th>
					<th>Status</th>
					
			</tr>
			</thead>
	
			<%
					List<TieUpModel> s1 = (List) request.getAttribute("hospitals");
					String hospitalid = (String) request.getAttribute("hospitalid");
					
			%>
			<%
				for(int j=0;j<s1.size();j++){
					if(s1.get(j).getHospital1Name().equals(hospitalid)){
					
			%>
			<tr>
			<td><%=s1.get(j).getHospital2Name()%></td>
			<td><%=s1.get(j).getStatus()%></td>
			</tr>
			<%}
			}%>
	</table>





</div>
<%@ include file="HospitalAdmin/footer.jspf" %>