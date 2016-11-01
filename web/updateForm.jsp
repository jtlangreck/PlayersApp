
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Players"%>
<% Players player = (Players) request.getAttribute("player"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="Stylesheet" href="style.css" type="text/css">
         <title>Update A Player </title>
         
    <body>
                <h1>Update A Player!</h1>
        
        <form name="updateForm" action="updatePlayer" method ="get">
             <label> Player ID:</label>
            <input type="text" name="id" value="<%= player.getPlayerID() %>" readonly />
            <br><br>
            <label> Player Name:</label>
            <input type="text" name="name" value="<%= player.getPlayerName() %>" />
            <br>
            <br>
            <label> Position:</label>
            <input type="text" name="position" value="<%= player.getPlayerPosition() %>" />
            <br>
            <br>
            <label> Age:</label> 
            <input type="text" name="age" value="<%= player.getAge() %>" />
            <br><br>
            <label> Height (inches): </label>
            <input type="text" name="height" value="<%= player.getHeight() %>" />
            <br>
            <br>
            <div id ="left">
            <input type="reset" name="clear" value="Clear" />
            </div>
            <div id ="right">
            <input type="submit" name="submit" value="Update" />
            </div>
            
            
        </form>
    </body>
</html>
