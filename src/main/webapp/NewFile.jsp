<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TO DO LIST SCREEN</title>
</head>
<body>

<h1>What do you want to do?</h1>
 
<form action="action_add.jsp">
<label for="Name">Enter a to do list Item:</label>
<input type="text" id="Name" name="Name" placeholder="Wash car">
<input type="submit" value="Submit">
</form>

<br>
<br>

<form action="action_delete.jsp">
<label for="Delete">Delete a to do list item:</label>
<input type="text" id="Delete" name="Delete" placeholder="Enter the task ID">
<input type="submit" value="Submit">
</form>

<br>
<br>

<form action="action_show.jsp">
<label for="show">Search To do List by ID:</label>
<input type="text" id="show" name="show" placeholder="4...5...6">
<input type="submit" value="Submit">
</form>



<h2>CURRENT TODO LIST</h2>

<table border="1" width="40%">
<thead>
<th>TaskId</th>
<th>Task</th>
<tbody>
<%
	Statement st = null;
	ResultSet rs = null;
	  try{
		  String url = "jdbc:mysql://localhost:3306/todolists";
		  String username = "root";
		  String password = "Root1234!";
		  String sql = "select * from todolist";
		  Class.forName("com.mysql.jdbc.Driver");
		  Connection con = DriverManager.getConnection(url,username,password);
		  st = con.createStatement();
		  String qry ="select * from todolist"; 
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
</tbody>
</table>

</body>
</html>