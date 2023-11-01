<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page  import="com.example.demo.model.User,java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agent Detail</title>
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
<h1>Agent Detail</h1><br>
 
<table>
<thead>
<tr>
        <th>Agent ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
        <th>Email ID</th>
        <th>Address</th>
        <th>Phone Number</th>
        <th>Status</th>
        <th>Action</th>
</tr>
</thead>
<tbody>
<c:forEach items="${agentList}" var="item">
<tr>
		<td><c:out value="${item.userId}"/></td>
		<td><c:out value="${item.firstName}"/></td>
		<td><c:out value="${item.lastName}"/></td>
		<td><c:out value="${item.age}"/></td>
		<td><c:out value="${item.emailId}"/></td>
		<td><c:out value="${item.address}"/></td>
		<td><c:out value="${item.phoneNumber}"/></td>
		<td><c:out value="${item.status}"/></td>
		<td><form action="/update/${item.userId}" method="post"><input type="submit" value="Update Status"/></form></td>
</tr>
</c:forEach>
</tbody>
</table>
<a href="/add-agent">Add</a>
</center>
</body>
</html>