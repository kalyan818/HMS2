<%@ include file="Patient/header.jspf" %>
<%@ include file="Patient/navigation.jspf" %>
<%@ include file="Patient/Feedback.jspf"%>

<style>
<%@ include file="/WEB-INF/css/style1.css"%>


td{
padding: 10px;
}
</style>


<script src="https://use.fontawesome.com/a6f0361695.js"></script>

<h2 id="fh2">WE APPRECIATE YOUR REVIEW!</h2>

<h6 id="fh6">Your review will help us to improve our services.</h6>






<form id="feedback1" action="/ViewHospital_p">



<div class="pinfo">Your personal info</div>
<center>
<table>


<tr>
<td>
<div class="input-group">

 <span class="input-group-addon"><i class="fa fa-user"></i></span>

 <input name="name" placeholder="Your Name" class="form-control" type="text" required>

  </div>


</td>

</tr>
<tr>
<td>
<div class="input-group">

 <span class="input-group-addon"><i class="fa fa-envelope"></i></span>

  <input name="email" type="email" class="form-control" placeholder="Your email" required>

   </div>

</td>

</tr>
<tr>
<td>
<div class="input-group">

 <span class="input-group-addon"><i class="fa fa-mobile" aria-hidden="true"></i></span>

 <input name="Mobile" placeholder="Mobile Number" class="form-control" required >

  </div>

</td>

</tr>
<tr>
<td>


</td>

</tr>
<tr>
<td>
<div class="input-group">

 <span class="input-group-addon"><i class="fa fa-heart"></i></span>

  <select class="form-control" id="rate" >

   <option value="1star">1</option>

   <option value="2stars">2</option>

   <option value="3stars">3</option>

   <option value="4stars">4</option>

   <option value="5stars">5</option>

  </select>

  </div>

</td>

</tr>


<tr>

<td>
<div class="input-group">

 <span class="input-group-addon"><i class="fa fa-pencil"></i></span>

 <textarea class="form-control" id="review" rows="3" required></textarea>

  </div>

</td>


</tr>


<tr>
<td>
<center><input type="submit" value="submit" class="btn btn-primary"/></center>
</td>
</tr>



</table>
</center>

</form>
























</div>
<%@ include file="Patient/footer.jspf"%>
