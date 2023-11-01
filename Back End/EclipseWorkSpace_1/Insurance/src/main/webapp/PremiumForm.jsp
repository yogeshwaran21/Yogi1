<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Health Insurance Premium Calculator</title>
</head>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h1 {
            text-align: center;
        }

        form {
            max-width: 400px;
            width: 100%;
            background: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="number"] {
            width: 90%;
            padding: 10px;
            /* margin-bottom: 10px; */
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="button"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            align:center;
        }

        input[type="button"]:hover {
            background-color: #0056b3;
        }

        #result {
            font-weight: bold;
        }
    </style>
<body>
<div>
<h1>Health Insurance Premium Calculator</h1> <!-- Added Title -->
<form id="insuranceForm">
    <label>Age:</label>
    <input type="number" id="age" required><br/><br/>

    <label>Monthly Premium Rate:</label>
    <input type="number" id="premiumRate" required><br/><br/>

    <label>Policy Term:</label>
    <input type="number" id="policyTerm" required><br/><br/>

    <input type="button" value="Calculate Premium" onclick="calculatePremium()">
</form>
</div>
</body>
</html>
