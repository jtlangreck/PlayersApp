<%-- 
    Document   : add
    Created on : Oct 16, 2016, 4:14:52 PM
    Author     : Jake Langreck
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="Stylesheet" href="style.css" type="text/css">
        <title>Add Another Player</title>
    </head>
    <body>
        <div class="wrap"> 
            
            <%@ include file="includes/header.jsp" %> 
            
            <%@ include file="includes/menu.jsp" %> 
            
        <div class="main">
        <h1>Add Another Player!</h1>
        
        <form name="addForm" action="addPlayer" method ="get">
            <label> Player Name:</label>
            <input type="text" name="name" value="" />
            <br>
            <br>
            <label> Position:</label>
            <input type="text" name="position" value="" />
            <br>
            <br>
            <label> Age:</label> 
            <input type="text" name="age" value="" />
            <br><br>
            <label> Height (in): </label>
            <input type="text" name="height" value="" />
            <br>
            <br>
            <div id ="left">
            <input type="reset" name="clear" value="Clear" />
            </div>
            <div id ="right">
            <input type="submit" name="submit" value="Submit" />
            </div>
            
            
        </form>
        </div>
             <%@ include file="/includes/footer.jsp" %>
        </div>
    </body>
</html>
