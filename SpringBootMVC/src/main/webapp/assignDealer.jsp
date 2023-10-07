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
<a href="getData3">Assign Dealer(Admin)</a>&nbsp;&nbsp; 
<a href="getData2">Track Order(Dealer)</a>



</td>
</tr>
<tr>
</tr>
</table>
</nav>
<body>
<table >
<tr>
  <th>Customer Registration Form</th>
  </tr>
    <tr> 
    <td>
    <form action="registerCustomer" method="get">
  <label>Organization Name</label>&nbsp;    <input type="text" id="login"  name="orgName"  placeholder="Enter Text"><br/><br/>
 <label>Contact Person</label>&nbsp;&nbsp;&nbsp;      <input type="text"   name="contactPerson" placeholder="Enter Text"><br/><br/>
 <label>Contact Number</label>&nbsp;&nbsp;&nbsp;      <input type="text"   name="contactNumber" placeholder="Enter Text">
 <label>Official Email</label>&nbsp;&nbsp;&nbsp;      <input type="text"   name="email" placeholder="Enter Text"><br/><br/>
 
 
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