
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="Stylesheet" href="style.css" type="text/css">
        <title>JSP Page</title>
    </head>
    
    <% String table = (String) request.getAttribute("table"); %>
    
    <body>
        <h1>My Players</h1>
        <%= table %>
        
        <br>
        <a href="add"> Add Another Player </a>
        <br><br>
        <a href="search.jsp"> Search Players </a>
       
    </body>
</html>
