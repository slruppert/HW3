<%--
    Document   : results
    Created on : Oct 25, 2015, 10:26:39 PM
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
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>
    <% 
        // inputs from index.jsp
        double hoursWorked = Double.parseDouble(request.getParameter("hoursWorked"));
        double payRate = Double.parseDouble(request.getParameter("payRate"));
        double preTaxDeduct = Double.parseDouble(request.getParameter("preTaxDeduct"));
        double postTaxDeduct = Double.parseDouble(request.getParameter("postTaxDeduct"));
        
        // variables for calculations
        int regularHours;
        double regularPay;
        double otHours = hoursWorked -40;
        double otPayRate = payRate * 1.5;
        double otPay;
        double grossPay; 
        double taxablePay;
        double taxAmount;
        double postTaxPay;
        double netPay;
        
        if (hoursWorked > 40){
            regularHours = 40;
            otHours= hoursWorked - 40; 
            otPayRate= payRate * 1.5;
            otPay= otHours * otPayRate;
            regularPay = regularHours * payRate;
            grossPay = regularPay + otPay;
        }
        else {
            grossPay = hoursWorked * payRate;
        }
        
        taxablePay = grossPay - preTaxDeduct;

        if (grossPay < 500) {
            taxAmount = taxablePay *.18; 
                    }
        else { 
         taxAmount = taxablePay * .22; 
                 }
        
        postTaxPay = taxablePay - taxAmount;
        netPay = postTaxPay - postTaxDeduct;
    
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
                    <td><%= otHours %></td>  
                </tr>
                <tr>
                    <td>Overtime Hourly Rate: </td>
                    <td><%= otPayRate %></td>  
                </tr>
                <tr>
                    <td>Gross Pay: </td>
                    <td><%= grossPay %></td>  
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct: </td>
                    <td><%= preTaxDeduct %></td>  
                </tr>
                <tr>
                    <td>Pre-tax Pay: </td>
                    <td><%= taxablePay %></td>  
                </tr>
                <tr>
                    <td>Tax Amount: </td>
                    <td><%= taxAmount %></td>  
                </tr>
                <tr>
                    <td>Post-Tax Pay: </td>
                    <td><%= postTaxPay %></td>  
                </tr>
                <tr>
                    <td>Post-tax Deduct: </td>
                    <td><%= postTaxDeduct %></td>  
                </tr>
                <tr>
                    <td>Net Pay: </td>
                    <td><%= netPay %></td>  
                </tr>
                    
                </tbody>
                
            </table>
    </body>
</html>
