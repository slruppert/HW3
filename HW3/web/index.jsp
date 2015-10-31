<%-- 
    Document   : inde
    Created on : Oct 2, 2015, 1:52:08 PM
    Author     : shylaruppert
    If hoursWorked > 40 then 
        regularHours = 40
        otHours= hoursWorked - 40 
        otPayRate= payRate * 1.5
        otPay= otHours * otPayRate
        regularPay = regularHours * payRate
        grossPay = regularPay + otPay
    else 
        grossPay = hoursWorked * payRate

    grossPay -preTaxDeduct = taxablePay 

    If grossPay <$500 then taxAmount = taxablePay *.18
    else 
        taxAmount = taxablePay * .22 
        
    postTaxPay = taxablePay - taxAmount
    netPay = postTaxPay - postTaxDeduct
    Int hoursWorked = 
        Int regHours =
        Int otHours= 
        Int otPayRate =
        Int payRate =
        Int grossPay =
        Int preTaxDeduct =
        Int taxablePay =
        Int taxAmount = 
        Int postTaxPay = 
        Int netPay = 
￼
--%>
<%@page import="java.util.Date"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator </title>
    </head>
    <%
       
        
        %>
    <body>
        <h1>Salary Calculator </h1>
        
        <form name="SalaryCalculator" action="results.jsp" method="post">
            <table>
                
                <tbody>
                    <tr>
                        <td>Hours Worked: </td>
                        <td><input type="number"name="hoursWorked" value="" size="50"required></td>  
                    </tr>
                    <tr>
                        <td>Hourly Pay: </td>
                        <td><input type="number"name="payRate" value="" size="50"required></td>  
                    </tr>
                    <tr>
                        <td>Pre-tax Deduct: </td>
                        <td><input type="number"name="preTaxDeduct" value="" size="50" required></td>  
                    </tr>
                    <tr>
                        <td>Post-tax Deduct: </td>
                        <td><input type="number"name="postTaxDeduct" value="" size="50" required></td>  
                    </tr>
                    
                </tbody>
                
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
                   
            
        </form>
        
    </body>
</html>
