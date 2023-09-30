<%@page import="java.time.LocalDate"%>
<%@page import="java.util.List,com.example.demo.Product,com.example.demo.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>    
<!DOCTYPE html>
<html>
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
<a href="trackOrder.jsp">Track Order(Dealer)</a>



</td>
</tr>
<tr>
</tr>
</table>
</nav>
 
<body>

<script type="text/javascript">


function test(){
	console.log("tested");
  document.getElementById('btn1').innerHTML = 'Accepted';  
  
}

function test2(){
	console.log("tested");
  document.getElementById('btn2').innerHTML = 'Rejected';   
 
}
</script>
<%-- <%
//out.write(""+request.getAttribute("pl"));
  List<Product> li= (List)request.getAttribute("pl");
  for(Product p:li){
	  out.write("<table border=1>"+p.getProdName()+"&nbsp;&nbsp;"+p.getQuantity()+"&nbsp;&nbsp"+p.getDeliveryAddress()
	             +"<button>Accept</button>"
			  +"</table/>");
  }
    
%> --%>

<table width="59%" border="1">
    <%
    int srNo=0;
    List<Product> li= (List)request.getAttribute("pl");
    List<Customer> li2= (List)request.getAttribute("cl");
    
            %>
<tr>
<td>Sr.No</td><td>Date</td><td>Customer Details</td><td>Product Ordered</td><td>Quantity</td>
<td>Delivery Address</td><td>Accept Order</td><td>Date Assigned</td>
</tr>
                <tr>
                 <%
                 for(Product p:li){
                 for(Customer c:li2){
                     %>
                     <tr>
                     <td>
                     <%=++srNo%>
                     </td>
                     <td>
                     <%=LocalDate.now()%>
                     </td>
                     <td>
                     <%=c.getContactPerson()%>
                     </td>
                     
                     <td>
                     <%=p.getProdName()%>
                     </td>
                     <td>
                     <%=p.getQuantity()%>
                     </td>
                     <td>
                     <%=p.getDeliveryAddress()%>
                     </td>
                     <td>
                     <button id='btn1' onclick="test()" value="Accepted">Accept</button>
                     <span id='label1'></span>
                      <button id='btn2' onclick="test2()" value="Rejected">Reject</button>
                      <span id='label2'></span>
                    
                     </td>
                     <td>
                     <%=LocalDate.now()%>
                     </td>
                     </tr>
                    
                     
                <% 
                    }
                 
                 }
                %> 
                                
                </tr>
                
       
</table>






<footer>
     <p>Author: SEED INFOTECH<br>
  <a href="mailto:parmeshwar.narvane@gmail.com">Email</a></p>
</footer>

</body>

</html> 