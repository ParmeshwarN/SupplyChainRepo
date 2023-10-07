<%@page import="java.time.LocalDate"%>
<%@page import="java.util.List,com.example.demo.Product,com.example.demo.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>

<script type="text/javascript">

function test3(){
	
	let buttons=	document.querySelectorAll(".btn")
		for (i = 0; i < buttons.length; i++) {
			buttons[i].addEventListener('click', function () {
				this.textContent='Somani Dealer';
				arr1[i]=1;
				console.log(arr1[i]);
				})
		  buttons[++i].addEventListener('click', function () {
				this.textContent='MK Dealer';
				arr2[i]=0;
				console.log(arr2[i]);
				})		
		}
		
	}	



function assign(){
	console.log("tested");
  document.getElementById('id1').innerHTML = 'Raj Dealer';  
  
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
<td>Delivery Address</td><td>Assign Dealer</td><td>Date Assigned</td>
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
                     <a  class="btn" href="#" onclick="test3()" id="id1">Click To Assign</a>
                    
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






<%-- <c:forEach items="${pl}" var="k">
<c:out value="${k}"/>

</c:forEach> --%>

</body>
</html> 