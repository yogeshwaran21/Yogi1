<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Deposit Money</title>
</head>
<body>
    <h3>Deposit Money</h3>
    <form action="deposit" method="post">
        User ID: <input type="text" name="uid" required><br>
        Amount to Deposit: <input type="text" name="amount" required><br>
        <input type="submit" value="Deposit">
    </form>
</body>
</html>