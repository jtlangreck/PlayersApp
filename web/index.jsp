<%-- 
    Document   : index
    Created on : Oct 13, 2016, 7:32:49 PM
    Author     : Jake Langreck
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="Stylesheet" href="style.css" type="text/css">
        <title>Player Roster</title>
    </head>
    <body>
        <div class="wrap">
            
           <%@ include file="includes/header.jsp" %> 
            
            <%@ include file="includes/menu.jsp" %> 
         
       
            
            <div class="main" >   
            <h1>My Player Database</h1>

            <a href="read">View All Players </a>
            <br> <br>
            <a href="search.jsp"> Search Players </a>
            <br><br>
            </div>
        
         <%@ include file="/includes/footer.jsp" %>
        
        </div>
    </body>
</html>
