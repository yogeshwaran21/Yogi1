<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Health</title>
<style>
    body {
        font-family: arial;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 800px;
        margin: 0 auto;
        background-color:orange;
        border: 1px solid black;
        border-radius: 5px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        padding: 20px;
        font-size: 20px;
        text-align:justify;
        color:white;
    }
    .benefit {
        max-width: 800px;
        margin: 0 auto;
        background-color: orange;
        border: 1px solid black;
        border-radius: 5px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        padding: 20px;
        font-size: 20px;
        text-align:justify;
        color:white;
    }
    .navbar{
    	border: 1px solid black;
    	border-radius: 10px;
    	padding:2px 0;
    	background-color:black;
    	text-align:center;
    	color:white;
    }
    .feature {
        max-width: 800px;
        margin: 0 auto;
        background-color: orange;
        border: 1px solid black;
        border-radius: 5px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        padding: 20px;
        font-size: 20px;
        text-align:justify;
        color:white;
    }

    h1 {
        font-size: 28px;
        color:white;
        text-align: center;
    }

    .content {
        font-size: 20px;
        line-height: 1.6;
        color:white;
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
</head>
<body>
<center>
<div class="navbar">
    <h1>Health Insurance</h1>
</div>
<br>
    <div class="container">
    <p class="content">Health insurance is vital because it protects your financial well-being and ensures that you can access necessary healthcare when needed. It can provide peace of mind, especially in the event of unexpected illnesses or accidents.

In summary, health insurance is a financial tool that helps individuals and families manage the costs of medical care. It is available in various forms, and the specifics of coverage, costs, and providers can vary widely. It's essential to carefully review and understand your health insurance policy to make the most of your coverage.</p>
</div>
<br>
<div class="navbar">
<h1>Benefits</h1>
</div>
<br>

<h2 >Financial Protection</h2>
<div class="benefit">Health insurance helps protect you from the high costs of medical care. It covers a significant portion of medical expenses, reducing the financial burden on you and your family.</div>
<h2>Access to Healthcare </h2>
<div class="benefit">Health insurance ensures that you have access to essential healthcare services. You can see doctors, specialists, and receive necessary treatments without the fear of unaffordable medical bills.</div>
<h2>Preventive Care</h2>
<div class="benefit">Many health insurance plans cover preventive services like vaccinations, screenings, and check-ups at no additional cost. This promotes early detection of health issues and overall well-being.</div>
<h2>Emergency Care</h2>
<div class="benefit">Health insurance covers emergency services, including ambulance rides and emergency room visits. This ensures that you can receive critical care in times of accidents or sudden illnesses.</div>
<h2>Prescription Drug Coverage</h2>
<div class="benefit">Health insurance often includes coverage for prescription medications, reducing the out-of-pocket cost of necessary drugs.</div>
<h2>Hospitalization</h2>
<div class="benefit">Health insurance covers hospital stays, surgical procedures, and associated medical expenses, which can be prohibitively expensive without insurance.</div>

<br>
<div class="navbar">
<h1>Features</h1>
</div>
<br>
<h2>Deductible</h2><div class="feature">The deductible is the amount you must pay out of pocket for medical expenses before your insurance coverage kicks in. Higher deductibles often lead to lower premium costs.</div>
<h2>Copayment</h2><div class="feature">Copayments are fixed amounts you pay for specific medical services or prescription drugs at the time of service or purchase. For example, you might have a $20 copay for a doctor's visit.</div>
<h2>Coinsurance</h2> <div class="feature"> Coinsurance is a percentage of the cost of a covered healthcare service that you are responsible for after meeting your deductible. For instance, you might be responsible for 20% of the cost of a hospital stay.</div>
<h2>Out-of-Pocket Maximum </h2> <div class="feature"></h2>The out-of-pocket maximum is the maximum amount you're required to pay for covered medical expenses in a given year. Once you reach this limit, the insurance plan covers all further eligible expenses.</div>
<h2>Preventive Care</h2> <div class="feature"> Many health insurance plans cover preventive services, such as vaccinations, screenings, and annual check-ups, without requiring cost-sharing</div>
<h2>Premium</h2><div class="feature">This is the amount you pay for your health insurance on a regular basis (usually monthly). Its a fundamental feature as it represents the cost of your coverage.</div>
</center> 
<table>
    <tr>
        <th>Plan Options</th>
        <th>Premium Payment Term</th>
        <th>Policy Term</th>
        <th>Minimum Policy Term</th>
        <th>Maximum Policy Term</th>
    </tr>
    <tr>
        <td rowspan="3">1, 2, 3, 6 & 7</td>
        <td>Single Pay</td>
        <td rowspan="3">5 years</td>
        <td rowspan="3">55 years</td>
        <td>5 years</td>
    </tr>
    <tr>
        <td>Limited Pay</td>
        <td>(PPT + 5) years</td>
        
    </tr>
    <tr>
        <td>Regular Pay</td>
        <td>10 years</td>
    </tr>
    <tr>
        <td>4, 5</td>
        <td>Single Pay</td>
        <td>100 minus Entry Age</td>
        <td>5 Pay</td>
    </tr>
    <tr>
        <td>8</td>
        <td>Single Pay</td>
        <td>1 year</td>
        <td>4 years</td>
    </tr>
    <tr>
        <td>9</td>
        <td>Single Pay</td>
        <td>70 minus Entry Age</td>
        <td>55 years</td>
        <td>Limited Pay</td>
    </tr>
    <tr>
        <td>10</td>
        <td>Regular Pay</td>
        <td>10 years</td>
        <td>55 years</td>
        <td></td>
    </tr>
</table>
</head>
</html>





