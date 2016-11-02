<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <title>Search Players</title>        
    </head>
    <body>
        <div class="wrap"> <!-- wrap -->


            <div class="main"> <!-- main -->


                <form name="searchForm" action="search" method="get">
                    <table>
                        <th>Search for a player:</th>
                        <tr>
                            <td>Player Name:</td>
                            <td><input type="text" name="searchVal" value=""/></td>
                        </tr>
                    </table>

                    <br>

                    <input type="submit" name="submit" value="Search"/>
                    <button onclick="href ='read.jsp'">Go Back</button>

                </form>

            </div> <!-- close main -->

        </div> <!-- close wrap -->  

    </body>
</html>