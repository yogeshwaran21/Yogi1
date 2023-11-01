<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Withdraw Money</title>
</head>
<body>
    <h3>Withdraw Money</h3>
    <form action="/Test/withdraw" method="post">
        User ID: <input type="text" name="uid" required><br>
        Amount to Withdraw: <input type="text" name="amount" required><br>
        <input type="submit" value="Withdraw">
    </form>
</body>
</html>






