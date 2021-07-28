<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.example.Project.Model.RegisterHospitalAdminModel"%>
<%@ include file="Admin/header.jspf"%>
<%@ include file="Admin/navigation.jspf"%>
<%@ include file="Admin/Reports.jspf"%>



<center><h2>Services</h2></center>
<table class="table table-bordered table-hover">
		<thead>
			<tr>
			<th>Hospital Name</th>
			<th>Services</th>
			</tr>
			</thead>
			<%
			Map<String,String> s = (HashMap) request.getAttribute("hospital");
			%>
			<%
				for(Map.Entry<String,String> entry : s.entrySet()){
			%>
			<tr>
			<td><%=entry.getKey()%></td>
			<td><%=entry.getValue()%></td>
			</tr>
			<%} %>
	
	
	</table>

</div>






<%@ include file="Admin/footer.jspf"%>
