<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
 /* body{
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}  */
th, td {
  border-style:solid;
  border-color: #96D4D4;
}
footer { 
    position: absolute; 
    bottom: 0; 
    right: 0; 
    z-index:10;
    background-color: gray;
}
</style>
</head>
<nav>
<table>
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<thead>Supply Chain Management :eShoppy</thead><br/><br/>
<tr>
<td><a href="">Home</a> &nbsp;&nbsp; <a href="dealerRegistration.jsp" target="_self">Register As Dealer</a>&nbsp;&nbsp; <a href="customerRegistration.jsp">Register As Customer</a>&nbsp;&nbsp; 
<a href="order.jsp">Place an Order</a>&nbsp;&nbsp; 
<a href="pendingOrders.jsp">Pending  Orders(Dealer)</a>&nbsp;&nbsp; 
<a href="assignDealer.jsp">Assign Dealer(Admin)</a>&nbsp;&nbsp; 
<a href="getData2">Track Order(Dealer)</a>



</td>
</tr>
<tr>
</tr>
</table>
</nav>
 

<body>
 
<table  style="float:left;">
<tr>
  <th>Admin Login</th><br/><br/>
  </tr>
    <tr> 
    <td>
    <form action="validateAdmin">
      <input type="text" id="login"  name="user" placeholder="login" required="required"><br/><br/>
      <input type="password" id="password"  name="password" placeholder="password" required="required"><br/><br/>
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>
    </td>
    </tr>
<tr>
 </table> 
<table  style="float:left;">
<tr>
  <th>Dealer Login</th>
  </tr>
    <tr> 
    <td>
    <form>
      <input type="text" id="login"  name="login" placeholder="login"><br/><br/>
      <input type="text" id="password"  name="login" placeholder="password"><br/><br/>
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>
    </td>
    </tr>
<tr>
 </table> 
 <table  style="float:left;">
<tr>
  <th>Customer Login</th>
  </tr>
    <tr> 
    <td>
    <form>
      <input type="text" id="login"  name="login" placeholder="login"><br/><br/>
      <input type="text" id="password"  name="login" placeholder="password"><br/><br/>
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>
    </td>
    </tr>
<tr>
 </table> 
 
 <footer>
     <p>Author: SEED INFOTECH<br>
  <a href="mailto:parmeshwar.narvane@gmail.com">Email</a></p>
</footer>
 

</body>

</html>