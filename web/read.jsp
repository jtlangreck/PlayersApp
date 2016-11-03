
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
        <div class="wrap">
            <div class="header">
             <%@ include file="includes/header.jsp" %> 
            
            <%@ include file="includes/menu.jsp" %> 
            </div>
            
            <div class="main">
                <h1>My Players</h1>
                <%= table %>

                <br>
                <a href="add"> Add Another Player </a>
                <br><br>
                <a href="search.jsp"> Search Players </a>
            </div>
            <div class="footer">
              <%@ include file="/includes/footer.jsp" %>      
                    
                    
            </div>
        </div>
       
    </body>
</html>
