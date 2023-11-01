<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
    <h1>Currency Detail</h1>
    <form action="exchange" method="post">
        <label>From Currency:</label>
        <select name="fromCurrency">
            <option value="INR">INR</option>
        </select>
        <br>
		<label>To Currency:</label>
        <select name="toCurrency">
            <option value="INR">INR</option>
            <option value="EUR">EUR</option>
            <option value="USD">USD</option>
        </select>
        <br>
        <label>Amount:</label>
        <input type="text" name="amount" required>
        <br>
        <input type="submit" value="Convert"><br>
        <button><a  style="text-decoration:none" href="login">Login</a></button>
    </form>
</body>
</html>
 