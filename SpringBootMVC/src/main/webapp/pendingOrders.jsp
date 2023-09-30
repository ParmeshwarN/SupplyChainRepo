<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>    
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>  --%>   
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
<a href="getData">Pending  Orders(Dealer)</a>&nbsp;&nbsp; 
<a href="assignDealer.jsp">Assign Dealer(Admin)</a>&nbsp;&nbsp; 
<a href="trackOrder.jsp">Track Order(Dealer)</a>



</td>
</tr>
<tr>
</tr>
</table>
</nav>
<body>

   <h4 align="center">List Of Pending Orders(For Dealer)</h4><br/><br/>
   
<%-- <c:forEach items="" var="" >

</c:forEach>
 --%><table>
<tr>
<td>Sr.No</td><td>Date</td><td>Customer Details</td><td>Product Ordered</td><td>Quantity</td>
<td>Delivery Address</td><td>Accept Order</td><td>Date Assigned</td>
</tr>
<tr>


</tr>
 </table> 
<footer>
     <p>Author: SEED INFOTECH<br>
  <a href="mailto:parmeshwar.narvane@gmail.com">Email</a></p>
</footer>
</body>
</html>