<%-- 
    Document   : Display.jsp
    Created on : Oct 16, 2017, 1:14:18 AM
    Author     : mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .red {
                color:red;
            }
            .blue{
                color: blue;
            }
        </style>
    </head>
    <body>
       
            <h4>Calculation String:
          
                <%
                    String operation = (String)request.getAttribute("mathOperation");
                    for(int i = 0 ; i<operation.length(); i++ ){
                        if(operation.charAt(i) == '-' || operation.charAt(i) == '+'  ){
                            out.print("<span class='red'>" + operation.charAt(i) +"</span>");
                        }
                        else if (operation.charAt(i) == '*' || operation.charAt(i) == '/'  ){
                             out.print("<span class='blue'>" + operation.charAt(i) +"</span>");
                        }
                        else{
                            out.print(operation.charAt(i));
                        }
                    }
                    
                    %>
            </h4>
            <p>
                Results <%= (String)request.getAttribute("result") %>
            </p>
           
    </body>
</html>
