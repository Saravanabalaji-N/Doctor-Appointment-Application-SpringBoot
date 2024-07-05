<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.chainsys.model.AppointBooking" %>
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
}

td{
padding: 10px;
}

</style>
</head>
<body>

  <table border="1">
        <thead>
            <tr>
                <th>Appointment Id</th>
                <th>User Name</th>
                <th>User Mail-Id</th>
                <th>Appointment Date </th>
                <th>Appointment Time </th>
            </tr>
        </thead>
        <tbody>
          <% ArrayList<AppointBooking> list= (ArrayList<AppointBooking>)request.getAttribute("view");
          
              for(AppointBooking list1: list){
              
          %>
                <tr>
                    <td><%=list1.getId1() %></td>
                    <td><%= list1.getUsername()%></td>
                    <td><%= list1.getMailid()%></td>
                    <td><%=list1.getDate() %></td>
                    <td><%=list1.getSlottime() %></td>
                </tr>
          <%}%>
          
        </tbody>
      
    </table>


</body>
</html> --%>