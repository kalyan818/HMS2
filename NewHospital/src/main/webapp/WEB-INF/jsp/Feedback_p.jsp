<%@ include file="Patient/header.jspf" %>
<%@ include file="Patient/navigation.jspf" %>
<%@ include file="Patient/Feedback.jspf"%>



<meta charset="utf-8">


<style>

html, body, main, div, h1, form, a, input,p{

  margin: 0;

  padding: 0;

}

body,html{font-size: 15px; font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;}

main a{text-decoration: none}

main{

  width: 35%;

  min-width: 480px;

  margin: 40px auto;

}

#form-container{

  box-shadow: 0 0 10px 1px #999;

  border-radius: .25rem;

  padding: 1rem 0;

}

#form-container h1{

  text-align: center;

  font-size: 1.5rem;

  color:black;

  padding: .8rem 0;

}

#form-container form{

  width: 85%;

  margin: 1rem auto;

}

.social-btn, input[type="email"], input[type="password"],input[type='submit']{

  display: block;

  outline: none;

  box-shadow: none;

  margin-bottom: 1.5rem;

  width:100%;

  color: #fff;

  line-height: 3.5rem;

  border-radius: .25rem;

  box-sizing: border-box;

  padding-right: 1rem;

}

p{position: relative ;}

.social-btn i{

  display: inline-block;

  width: 5rem;

  padding-right: 1.5rem;

  font-size: 1.6rem;

  vertical-align: middle;

  text-align: center;

}

.fb-btn{background-color: #0275d8; transition: .1s background ease-in-out;}

.gp-btn{background-color: #5cb85c; transition: .1s background ease-in-out;}

.gp-btn1{background-color: #d9534f; transition: .1s background ease-in-out;}

.fb-btn:hover{background-color: #0275d8}

.gp-btn:hover, input[type="submit"]:hover{background-color: none;}

::-webkit-input-placeholder { color: #3b5998; }

:-moz-placeholder { color: #3b5998; }

::-moz-placeholder { color: #3b5998; }

:-ms-input-placeholder { color: #3b5998; }

input[type="email"], input[type="password"]{

  border:1px solid #dcc1c1;

  text-indent: 1rem;

  color: #666;

  transition: .1s font ease-in-out;

}

input[type="email"]:hover, input[type="password"]:hover{

  border:1px solid #d65646;

}

input[type="email"]:focus, input[type="password"]:focus,input[type="email"]:active, input[type="password"]:active{

  font-size: 1.1rem;

  border:1px solid #00c1a8;

   color: #3b5998;

}

/*Resetting chrome autofill */

input:-webkit-autofill {

  -webkit-box-shadow: 0 0 0px 200px white inset;

  -webkit-text-fill-color: #666;

}

input[type='submit']{

  border:none;

  background-color: #d34836;

  cursor: pointer;

  font-size: 1.2rem;

}

#recover-new-account{

  width: 100%;

  margin: 0 auto;

  display: flex;

  flex-flow: row;

  justify-content: space-around;

}

#recover-new-account a{color: #00c1a8;text-align: center;}

#recover-new-account a:hover{color: #03d0b6; }

#recover-new-account{color: #dcc1c1}

@media only screen and (max-width:768px){

  html{font-size: 13px;}

  #form-container h1{font-size: 1.3rem}

  main{

    width: 70%;

    min-width: 300px;

  }

}

/* Finished Form Styling */

aside a {

 text-align:center;

 text-decoration:none;

 color: #f92973;

 animation: animate 1s infinite;

}

aside a:hover{

 color: #00c1a8;

  text-decoration:underline;

}

@keyframes animate{

 0%{

  text-decoration:none;

 }

 20%{

  text-decoration:underline;

  -moz-text-decoration-color:#00c1a8;

  text-decoration-color:#00c1a8;

 }

 40%{

  text-decoration:none;

 }

 60%{

   text-decoration:underline;

  -moz-text-decoration-color:#00c1a8;

  text-decoration-color:#00c1a8;

 }

 80%{

  color: #00c1a8;

 }

}

</style>









  <main>

   <article id="form-container">

      <h1>Review/Feedback</h1>

      <form>

        <a href="/Feedback_form" class="social-btn fb-btn"><i class="fa fa-male"></i>Feedback for Hospital</a>

        <p><a href="/Feedback_form" class="social-btn gp-btn"><i class="fa fa-user"></i>Feedback for Doctor</a></p>

        <p><a href="/Feedback_form" class="social-btn gp-btn1"><i class="fa fa-h-square"></i>Feedback for Services</a></p>


      </form>

    </article>

  </main>
























<%@ include file="Patient/footer.jspf" %>
