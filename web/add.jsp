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
        <title>Add Another Player</title>
    </head>
    <body>
        <h1>Add Another Player!</h1>
        
        <form name="addForm" action="addPlayer" method ="get">
            <label> Player Name:</label>
            <input type="text" name="name" value="" />
            <br>
            <label> Position:</label>
            <input type="text" name="position" value="" />
            <br>
            <label> Age:</label> 
            <input type="text" name="age" value="" />
            <br>
            <label> Height (inches): </label>
            <input type="text" name="height" value="" />
            <br>
            <input type="reset" name="clear" value="Clear" />
            <input type="submit" name="submit" value="Submit" />
            
            
        </form>
    </body>
</html>
