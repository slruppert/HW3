<%-- 
    Document   : results
    Created on : Oct 25, 2015, 10:26:39 PM
    Author     : shylaruppert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>
    <% 
        double hoursWorked = Double.parseDouble(request.getParameter("hoursWorked"));
        double payRate = Double.parseDouble(request.getParameter("payRate"));
        double preTaxDeduct = Double.parseDouble(request.getParameter("preTaxDeduct"));
        double postTaxDeduct = Double.parseDouble(request.getParameter("postTaxDeduct"));   
    
        %>
    <body>
        <h1>Salary Info</h1>
        <table>
            <tbody>
                <tr>
                    <td>Hours Worked: </td>
                    <td><%= hoursWorked %></td>  
                </tr>
                <tr>
                    <td>Hourly Pate: </td>
                    <td><%= payRate %></td>  
                </tr>
                <tr>
                    <td># Hours Overtime: </td>
                    <td></td>  
                </tr>
                <tr>
                    <td>Overtime Hourly Rate: </td>
                    <td></td>  
                </tr>
                <tr>
                    <td>Gross Pay: </td>
                    <td><%%></td>  
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct: </td>
                    <td><%= preTaxDeduct %></td>  
                </tr>
                <tr>
                    <td>Pre-tax Pay: </td>
                    <td><%%></td>  
                </tr>
                <tr>
                    <td>Tax Amount: </td>
                    <td><%%></td>  
                </tr>
                <tr>
                    <td>Post-Tax Pay: </td>
                    <td><%%></td>  
                </tr>
                <tr>
                    <td>Post-tax Deduct: </td>
                    <td><%= postTaxDeduct %></td>  
                </tr>
                <tr>
                    <td>Net Pay: </td>
                    <td><%= payRate %></td>  
                </tr>
                    
                </tbody>
                
            </table>
    </body>
</html>
