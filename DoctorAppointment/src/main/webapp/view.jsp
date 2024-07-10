 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.List" %>
    <%@ page import="com.chainsys.doctorappointment.model.AppoitmentBook"%>
    <%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

body{
display: flex;
justify-content: center;
}

th{
padding: 20px;
background: #aaaaaa;
}

td{
padding: 10px;
}
button{
padding: 10px;
background: teal;
opacity: 50%;
}
button:hover{
background: teal;
opacity: 100%;
}
</style>
</head>
<body>

  <table >
        <thead>
            <tr>
                <th>Appointment Id</th>
                <th>User Name</th>
                <th>User Mail-Id</th>
                <th>Appointment Date </th>
                <th>Appointment Time </th>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
          <%
	List<AppoitmentBook> list=(List<AppoitmentBook>)session.getAttribute("view");
          
          for(AppoitmentBook book:list){
	%>
                <tr>
                    <td><%=book.getAppointId() %></td>
                    <td><%=book.getAppointUser()%></td>
                    <td><%=book.getAppointMailId()%></td>
                    <td><%=book.getAppointDate() %></td>
                    <td><%=book.getAppointTime() %></td>
                    <td><button>Accept</button></td>
                    <td><button>Decline</button></td>
                </tr>
 
          <%} %>
        </tbody>
      
    </table>


</body>
</html>