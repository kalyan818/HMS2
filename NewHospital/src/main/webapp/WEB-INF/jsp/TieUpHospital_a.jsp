<%@page import="com.example.Project.Model.TieUpModel"%>
<%@ include file="Admin/header.jspf"%>
<%@ include file="Admin/navigation.jspf"%>
<%@ include file="Admin/TieUpHospital.jspf"%>



	<h3 style="color: red;">${ status}</h3>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
					<th>Hospital Id</th>
					<th>Hospital Name</th>
					<th>Hospital Id</th>
					<th>Hospital Name2</th>
					<th>Status</th>
					<th>Tie Up</th>
					
			</tr>
			</thead>
	
			<%
					List<TieUpModel> s1 = (List) request.getAttribute("TieUp");
			%>
			<%
				for(int j=0;j<s1.size();j++){
			%>
			<tr>
			<td><%=s1.get(j).getHospital1()%></td>
			<td><%=s1.get(j).getHospital1Name()%></td>
			<td><%=s1.get(j).getHospital2()%></td>
			<td><%=s1.get(j).getHospital2Name()%></td>
			<td><%=s1.get(j).getStatus()%></td>
			<td><a href="/ChangeStatus?hos1=<%=s1.get(j).getHospital1()%>&hos2=<%=s1.get(j).getHospital2()%>&Status=Approve"><button class="btn btn-success">Approve</button></a>
			<a href="/ChangeStatus?hos1=<%=s1.get(j).getHospital1()%>&hos2=<%=s1.get(j).getHospital2()%>&Status=Reject"><button class="btn btn-success">Reject</button></a></td>
			</tr>
			<%}%>
	</table>



<%@ include file="Admin/footer.jspf"%>
