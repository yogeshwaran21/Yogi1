<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table {
        border-collapse: collapse;
        width: 80%;
        margin: 20px auto;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1); /* Add shadow */
        border: 1px solid #ccc; /* Add border */
    }
    th, td {
        border: 1px solid #ccc;
        padding: 8px;
        text-align: center;
        transition: background-color 0.3s; /* Add transition */
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    th:hover, td:hover {
        background-color: #f9f9f9; /* Change color on hover */
    }
</style>
<body>
<table >
        <thead>
            <tr>
            	<th>Policy ID</th>
                <th>Policy Name</th>
                <th>Coverage Amount</th>
                <th>Policy Term</th>
                <th>Effective Date</th>
                <th>Expiry Date</th>
                <th>Payment Frequency</th>
                <th>Owner Name</th>
               	<th>Beneficiary Name</th>
               	<th>Premium Amount</th>
               	<th>Add Ons</th>
               	<th>Policy Status</th>
            </tr>
        </thead>
        <tbody>
<c:forEach items="${policyList}" var="item">
<tr>
		<td><c:out value="${item.policyId}"/></td>
		<td><c:out value="${item.policyName}"/></td>
		<td><c:out value="${item.coverageAmt}"/></td>
		<td><c:out value="${item.policyTerm}"/></td>
		<td><c:out value="${item.effectiveDate}"/></td>
		<td><c:out value="${item.expiryDate}"/></td>
		<td><c:out value="${item.paymentFrequency}"/></td>
		<td><c:out value="${item.customer.custId}"/></td>
		<td><c:out value="${item.beneficiaryName}"/></td>
		<td><c:out value="${item.premiumAmt}"/></td>
		<td><c:out value="${item.policyAddOns}"/></td>
		<td><c:out value="${item.policyStatus}"/></td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html> --%>







<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insurance Agent Form</title>
<style>
   body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    align-items: center;
}

form {
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    padding: 20px;
    max-width: 400px;
    width: 100%;
    text-align: left;
}

h1 {
    text-align: center;
    color: #0056b3;
}

label {
    font-weight: bold;
    display: block;
    margin-bottom: 8px;
}

input[type="text"],
input[type="password"] {
    width: 90%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

input[type="submit"] {
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    cursor: pointer;
    font-size: 16px;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

</style>
</head>
<body>
 <center>
<h1>Insurance Agent Form</h1><br>
 
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
</center> 
</body>
</html>