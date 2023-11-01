<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insurance Agent Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }

    h1 {
        text-align: center;
    }

    form {
        max-width: 400px;
        margin: 0 auto;
        background: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        align:center;
    }

    label {
        display: block;
        margin-bottom: 8px;
    }

    input[type="text"],
    input[type="date"] {
        width: 95%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
 
<h1>Insurance Agent Form</h1>
 
<form action="/agentdetail">
 
    <label for="agentName">Agent Name:</label>
    <input type="text" id="agentName" name="agentName"><br><br>
 
    <label for="agentID">Agent ID:</label>
    <input type="text" id="agentID" name="agentID"><br><br>
 
    <label for="agentNumber">Agent Number:</label>
    <input type="text" id="agentNumber" name="agentNumber"><br><br>
 
    <label for="insuranceType">Type of Insurance:</label>
    <input type="text" id="insuranceType" name="insuranceType"><br><br>
 
    <label for="joinDate">Date of Joining:</label>
    <input type="date" id="joinDate" name="joinDate"><br><br>
 
    <label for="salary">Salary:</label>
    <input type="text" id="salary" name="salary"><br><br>
 
    <input type="submit" value="View Agent">
</form>
 
</body>
</html>




















