<%@ include file="HospitalAdmin/header.jspf" %>
<%@ include file="HospitalAdmin/navigation.jspf" %>
<%@ include file="HospitalAdmin/PatientRecord.jspf"%>





<form action="/PatientRecordSearch_h" method="get" model = "PatientRecordModel">

<label>Hospital ID</label><br>
<input type="text" class="form-control" placeholder="Enter Hospiatal ID" style="width: 200px;" name="Hospital_Id"/>
<p style="red">${error1}</p><br>
<label>Patient ID</label><br>
<input type="text" class="form-control" placeholder="Enter Patient ID" style="width: 200px;" name="Patient_Id"/>
<p style="red">${error2}</p><br>

<input type="submit" value="submit" class="btn btn-primary"/>

</form>











</div>



<%@ include file="Patient/footer.jspf"%>