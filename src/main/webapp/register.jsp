<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="LogRegStyle.css">
</head>
<body>
      <div class="container">
          	<h1>Register</h1>
          	<form action="RegisterServlet" method="post">
          	       <label for="username">Username:</label>
          	       <input type="text" id="username" name="username" required>
          	       <label for="email">Email:</label>
          	       <input type="text" id="email" name="email" required>
          	       <label for="password">Password:</label>
          	       <input type="password" id="password" name="password" required>
          	       <button type="submit">Register</button>
          	       
          	</form>
          	<p><a href="index.html">Back to Home</a></p>
          	
          	 <% String error = request.getParameter("error");
          	    if(error !=null && error.equals("1")){%>
          	    	<p style="color:red;">Registration Failed. Please try again</p>
          	   <% } %> 
     </div>
    
</body>
</html>