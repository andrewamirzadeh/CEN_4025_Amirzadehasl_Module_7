<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results Page</title>
</head>
<body>
<h1>Results of Action</h1>

<%
	String empty = "Your task ID was empty bro";
	String delete1 = request.getParameter("Delete");
	if(delete1.isEmpty()){
		%> <%=empty%><%
}
	else{
	Statement st = null;
	ResultSet rs = null;
	  try{
		  
		  Integer delete = Integer.valueOf(delete1);
		 
		  String url = "jdbc:mysql://localhost:3306/todolists";
		  String username = "root";
		  String password = "Root1234!";
		  Class.forName("com.mysql.jdbc.Driver");
		  Connection con = DriverManager.getConnection(url,username,password);
		  st = con.createStatement();
		  String qry ="delete from todolist where tdListID= ?"; 
		  PreparedStatement pstmt = con.prepareStatement(qry);
		  pstmt.setInt(1,delete); 
		  pstmt.executeUpdate();
		  con.close();
		  st.close();
		    }
		     catch(Exception ex){
		      out.println(ex);
		     }
	}
		    %>
		    <br>
<a href="NewFile.jsp">Return to main screen</a>
</body>
</html>