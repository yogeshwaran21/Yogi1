<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
        .animated-table {
            width: 100%;
            border-collapse: collapse;
            animation: fadeIn 1s;
        }
        
        .animated-table th, .animated-table td {
            border: 1px solid #dddddd;
            text-align: center;
            padding: 8px;
        }
        
        .animated-table th {
            background-color: #f2f2f2;
        }
        
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
         a {
        display: inline-block;
        margin: 10px;
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        text-decoration: none;
        border: none;
        border-radius: 5px;
        font-weight: bold;
        text-align: center;
        text-decoretion:none;
    }

    a:hover {
        background-color: #0056b3;
    } 
    </style>
</head>
<body>
<center>
<table>
<thead>
 <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Mobile Number</th>
        <th>Address</th>
        <th>Age</th>
        <th>E-Mail</th>
        <th>Policy Number</th>
        <th>Type Of Insurance</th>
        <th>Agent Id</th>
        <th>Approved/Disapproved</th>
        
 </tr>
 </thead>
 <tr>
 		<td></td>
 		<td></td>
 		<td></td>
 		<td></td>
 		<td></td>
 		<td></td>
 		<td></td>
 		<td></td>
 		<td></td>
 		<td>App&nbsp<input type="radio" name="select" value="app"> Male<br>Not App&nbsp<input type="radio" name="select" value="disapp"></td>
 </tr>
 </table>
 
 <a href="agentform">Agent Form</a>
</center>
</body>
</html>