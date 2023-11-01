<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Select</title>
</head>

<body>
<center>
    <h3>Click On What You Want</h3>
    
  
    <button><a href="withdraw.jsp" style="text-decoration: none">Withdraw</a></button>
    <button><a href="deposit.jsp" style="text-decoration: none">Deposit</a></button>
    <button><a href="transfer.jsp" style="text-decoration: none">Fund Transfer</a></button>
    <button><a href="balance.jsp" style="text-decoration: none">Balance Info</a></button><br><br>
 
    <form action="LogoutServlet" method="post">
        <input type="submit" value="Logout">
    </form>
</center>    
</body>

</html>