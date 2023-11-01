<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insurance Agent Form</title>
<style>
    body {
  font-family: Arial, sans-serif;
  margin: 20px;
  padding: 20px;
}

h1 {
  font-size: 24px;
  color: #333;
}

/* Style the labels and input fields */
label {
  display: block;
  margin-top: 10px;
  font-weight: bold;
}

input[type="text"],
input[type="email"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  margin: 5px 0;
  border: 1px solid #ccc;
  border-radius: 5px;
  font-size: 16px;
}

/* Style the submit button */
input[type="submit"] {
  background-color: #0074a2;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #005d8f;
}

</style>
</head>
<body>
<h1>Insurance Agent Form</h1>
 
<form action="/add-agent"  >
 
    <label>Agent First Name:</label>
    <input type="text" name="firstName"/><br/><br/>
 
    <label>Agent Last Name:</label>
    <input type="text" name="lastName"/><br/><br/>
 
    <label>Age:</label>
    <input type="text" name="age"/><br/><br/>
 
    <label>Email ID:</label>
    <input type="text" name="emailId"/><br/><br/>
 
    <label>Address:</label>
    <input type="text" name="address"/><br/><br/>
 
    <label>Phone Number:</label>
    <input type="text" name="phoneNumber"/><br/><br/>
    
    <label>Password:</label>
    <input type="password" name="password"/><br/><br/>
    <input name="role" value="Agent" type="hidden"/><br/><br/>
    <input name="status" value="Active" type="hidden"/><br/><br/>
 
    <input type="submit" value="Add Agent">
</form>
 
</body>
</html>






<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    div {
        width:400px;
        background-color:pink;
        border: 2px solid white;
        border-radius: 5px;
        margin: 20px;
        padding: 20px;
    }

    h1 {
        font-size: 24px;
        color:blue;
    }

    form {
        width: 80%;
        margin: 0 auto;
    }

    b {
        display: block;
        font-weight: bold;
        margin-top:10px;
        color:white;
    }

    select, input[type="date"], input[type="text"], input[type="number"] {
        width: 75%;
        padding: 10px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 3px;
        font-weight: bold;
    }
    option{
    font-weight: bold;
    text-align:center;
    }

    select {
        appearance: none;
        -webkit-appearance: none;
        -moz-appearance: none;
        background-image: url('arrow.png'); /* Add a down arrow icon */
        background-position: right center;
        background-repeat: no-repeat;
    }

    </style>

</head>
<body>
<%int id = (int)request.getAttribute("id"); %>
<center>


    <h1>Policy Premium Form</h1>
    <div>
    <form action="/policy/add-policy" method="post">
    	<b>POLICY NAME</b>
    	<select name="policyName" id="policyname" onchange="myPolicyFunction()">
            <option value="Life">Life Insurance</option>
            <option value="Health">Health Insurance</option>
            <option value="Vehicle">Vehicle Insurance</option>
            <option value="Child">ChildCare Insurance</option>
            <option value="Home">Home Insurance</option>
     	</select><br/>
        
        
       <b>COVERAGE AMOUNT</b>
        <select name="coverageAmt" id="coverageAmt">
            <option value="2000000">20 Lakhs</option>
            <option value="1500000">15 Lakhs</option>
            <option value="1000000">10 Lakhs</option>
            <option value="500000">5 Lakhs</option>
        </select><br>
        
       <b>POLICY TERM</b>
        <select name="policyTerm" id="policyterm">
          <option value="3">3 Years</option>
          <option value="5">5 Years</option>  
          <option value="10">10 Years</option>  
          <option value="15">15 Years</option>    
        </select><br>
        
        <b>PAYMENT FREQUENCY</b>
        <select name="paymentFrequency" id="paymentFrequency">
            <option value="Monthly">Monthly</option>            
            <option value="Quarterly">Quarterly</option>
            <option value="HalfYearly">Half Yearly</option>
            <option value="Annually">Annually</option>
            
        </select><br> 
    </form>
    </div>
 </center>
</body>
</html> --%>


<!--  Effective Date:<input name="effectiveDate" type="date"/><br> -->
        
      <%--   Policy Owner Name: <input name="customer" value="<%=id %>" type="number" readonly/><br>
        Beneficiary Name: <input name="beneficiaryName" type="text"/><br>
        
        Add-Ons:  <input name="policyAddOns" type="text"/><br>
        
        <label for="calculateButton">Calculate:</label>
        <button id="calculateButton" type="button" onclick="calculateValue()">Calculate Value</button><br/><br/>
        
        <input name="premiumAmt" id="calculatedValue" type="text" readonly/><br>
  
        <input value="Pending" type="hidden" name="policyStatus"/>
       
        <input type="submit" value="Submit"> --%>




<%--  <script type="text/javascript">
function myPolicyFunction() {
	var age = <%= (int)request.getAttribute("custAge") %>;
  var name = document.getElementById('policyname').value;
  console.log(name);
  var selectElement = document.querySelector('#policytermlist');
  selectElement.innerHTML = ''; // Clear existing options
  if(name=="Health"){
	  if(age<=65&&age>=51){
		  let newOption1 = new Option('12 years',12);
		  let newOption2 = new Option('10 years',10);
		  let newOption3 = new Option('8 years',8);
		  selectElement.add(newOption1,undefined);
		  selectElement.add(newOption2,undefined);
		  selectElement.add(newOption3,undefined);
	  }
	  else if(age<=50&&age>=31){
		  let newOption1 = new Option('20 years',20);
		  let newOption2 = new Option('15 years',15);
		  let newOption3 = new Option('10 years',10);
		  selectElement.add(newOption1,undefined);
		  selectElement.add(newOption2,undefined);
		  selectElement.add(newOption3,undefined);
	  }
	  else if(age<=30&&age>=18){
		  let newOption1 = new Option('30 years',30);
		  let newOption2 = new Option('25 years',25);
		  let newOption3 = new Option('20 years',20);
		  selectElement.add(newOption1,undefined);
		  selectElement.add(newOption2,undefined);
		  selectElement.add(newOption3,undefined);
	  }
  }else if(name=="Vehicle"){
	  if(age<=65&&age>=51){
		  let newOption1 = new Option('11 years',11);
		  let newOption2 = new Option('9 years',9);
		  let newOption3 = new Option('7 years',7);
		  selectElement.add(newOption1,undefined);
		  selectElement.add(newOption2,undefined);
		  selectElement.add(newOption3,undefined);
	  }
	  else if(age<=50&&age>=31){
		  let newOption1 = new Option('20 years',20);
		  let newOption2 = new Option('15 years',15);
		  let newOption3 = new Option('10 years',10);
		  selectElement.add(newOption1,undefined);
		  selectElement.add(newOption2,undefined);
		  selectElement.add(newOption3,undefined);
	  }
	  else if(age<=30&&age>=18){
		  let newOption1 = new Option('35 years',30);
		  let newOption2 = new Option('30 years',25);
		  let newOption3 = new Option('25 years',20);
		  selectElement.add(newOption1,undefined);
		  selectElement.add(newOption2,undefined);
		  selectElement.add(newOption3,undefined);
	  }
  }else{
	  selectElement.innerHTML = '';
  }
 
}
 
function calculateValue() {
	  var policyTerm = document.getElementById('policytermlist').value;
	  var paymentFrequency = document.getElementById('paymentFrequency').value;
	  var coverage = document.getElementById('coverageAmt').value;
	  var calculatedValue = 0;
	  if(paymentFrequency=="Monthly"){
		  calculatedValue=coverage/(policyTerm*12);
	  }
	  else if(paymentFrequency=="Annually"){
		  calculatedValue=coverage/policyTerm;
	  }else {
	    calculatedValue = 0;
	  }
	  calculatedValue = Math.round(calculatedValue * 100) / 100;
	  document.getElementById('calculatedValue').value = calculatedValue;
	}
</script> --%>  