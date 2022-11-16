<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h2>CURRENT TODO LIST</h2>

<table border="1" width="40%">
<thead>
<th>TaskId</th>
<th>Task</th>
<tbody>
<%
	String add = request.getParameter("show");
	Statement st = null;
	ResultSet rs = null;
	  try{
		  String url = "jdbc:mysql://localhost:3306/todolists?allowMultiQueries=true";
		  String username = "root";
		  String password = "Root1234!";
		  Class.forName("com.mysql.jdbc.Driver");
		  Connection con = DriverManager.getConnection(url,username,password);
		  st = con.createStatement();
		  String qry ="select * from todolist where tdListId= " + add; 
		  
		  rs = st.executeQuery(qry);
		  while(rs.next()){ %>
		  <tr>
		  <td><%=rs.getString(1)%></td>
		  <td><%=rs.getString(2)%></td>
		  </tr>
		     <%
		  }
		  con.close();
		  st.close();
		    }
		     catch(Exception ex){
		      out.println(ex);
		     }
		    %>

<a href="NewFile.jsp">Return to main screen</a>
</body>
</html>