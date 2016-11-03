<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <title>Search Players</title>        
    </head>
    <body>
        <div class="wrap"> 
            
           
            <%@ include file="includes/header.jsp" %> 
            
            <%@ include file="includes/menu.jsp" %> 
                
            

            <div class="main"> 


                <form name="searchForm" action="search" method="get">
                        <h4>Search for a player:</h4>
                       
                            <label>Player Name:</label>
                            <input type="text" name="searchVal" value=""/>
                       
                    <br>
                    <br>

                    <input type="submit" name="submit" value="Search"/>
                    <button onclick="href ='read.jsp'">Go Back</button>

                </form>

            </div>
                <%@ include file="/includes/footer.jsp" %>
        </div> 

    </body>
</html>