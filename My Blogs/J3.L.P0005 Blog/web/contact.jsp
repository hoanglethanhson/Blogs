<%-- 
    Document   : contact
    Created on : Jun 3, 2018, 4:37:26 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Page</title>
        <link href="styles/index.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <%@include file="header.jsp" %>
            </div>
            <div class="menu">
                <%@include file="menuContact.jsp" %>
            </div>
            <div class="menu-arrow">
                <img id="arrow-contact" src="images/img02.jpg"/>
            </div>
            <div class="content">
                <div class="blog">
                    <form action="contact" method="POST">
                        <fieldset>
                            <legend><strong>All fields are required</strong></legend>
                            <table>
                                <tr>
                                    <td class="form-title">
                                        <p>Name :</p>
                                    </td>
                                    <td class="field-name">
                                        <input type="text" name="name" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="form-title">
                                        <p>Email :</p>
                                    </td>
                                    <td class="field-name">
                                        <input type="email" name="email" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="form-title">
                                        <p>Phone : </p>
                                    </td>
                                    <td class="field-name">
                                        <input type="number" name="phone" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="form-title">
                                        <p>Company : </p>
                                    </td>
                                    <td class="field-name">
                                        <input type="text" name="company" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="form-title">
                                        <p id="message">Message : </p>
                                    </td>
                                    <td class="field-name">
                                        <textarea name="message"></textarea>
                                    </td>
                                </tr>
                                
                            </table>                           
                            
                            <input type="submit" value="Send">
                        </fieldset>
                    </form>
                </div>
                <div class="right-bar">
                    <%@include file="rightbar.jsp" %>
                </div>
            </div>
            
        </div>
    </body>
</html>
