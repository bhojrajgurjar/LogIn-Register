<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogIn</title>
<link rel="stylesheet" type="text/css" href="LogRegStyle.css">
</head>
<body>
     <div class="container">
          	<h1>LogIn</h1>
          	<form action="LoginServlet" method="post">
          	       <label for="username">Username:</label>
          	       <input type="text" id="username" name="username" required>
          	       <label for="password">Password:</label>
          	       <input type="password" id="password" name="password" required>
          	       <button type="submit">LogIn</button>
          	       
          	</form>
          	<p><a href="index.html">Back to Home</a></p>
          	
          	<% String error = request.getParameter("error");
          	    if(error !=null && error.equals("1")){%>
          	    	<p style="color:red;">Invalid username or password. Please try again</p>
          	   <% } %> 
          	   
          	 <% String rs = request.getParameter("registration");
          	    if(rs !=null && rs.equals("success")){%>
          	    	<p style="color:green;">Registration Done Successfully. Please LogIn </p>
          	   <% } %> 
          	
     </div>
</body>
</html>