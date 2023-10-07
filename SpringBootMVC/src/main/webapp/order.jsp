<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
footer { 
    position: absolute; 
    bottom: 0; 
    right: 0; 
    z-index:10;
    background-color: gray;
}
table, td, th {
  border: 1px solid black;
}

table {
  border-collapse: collapse;
  width: 100%;
}

td {
  height: 50px;
  vertical-align: bottom;
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
<a href="getData2.jsp">Track Order(Dealer)</a>



</td>
</tr>
<tr>
</tr>
</table>
</nav>
<body>
<table >
<tr>
  <th>Place An Order</th>
  </tr>
    <tr> 
    <td>
    <form action="placeOrder" method="get">
  <label>Product Id</label>&nbsp;    <input type="text" id="login"  name="id"  placeholder="Enter Text"><br/><br/>
 <label>Product Name</label>&nbsp;&nbsp;&nbsp;      <input type="text" id="password"  name="prodName" placeholder="Enter Text"><br/><br/>
 <label>Quantity</label>&nbsp;&nbsp;&nbsp;      <input type="text" id="password"  name="quantity" placeholder="Enter Text">
 <label>Delivery Address</label>&nbsp;&nbsp;&nbsp;      <input type="text" id="password"  name="address" placeholder="Enter Text"><br/><br/>
 
 
      <input type="submit" class="fadeIn fourth" value="Submit">
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