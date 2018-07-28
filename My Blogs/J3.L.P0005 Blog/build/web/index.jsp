<%-- 
    Document   : index
    Created on : May 28, 2018, 10:49:15 PM
    Author     : dell
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Category"%>
<%@page import="model.Blog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="styles/index.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <div class="container">
            <div class="header">
                <%@include file="header.jsp" %>
            </div>
            <div class="menu">
                <%@include  file="menu.jsp" %>
            </div>
            <div class="menu-arrow">
                <img id="arrow-home" src="images/img02.jpg"/>
            </div>
            <div class="content">
                <div class="blog">
                    <div class="blog-link">
                        <p><i><span id="cate"><a href="list?cateID=${category.id}">Category ${category.category} *</a></span></i>
                            <i><a href="list?cateID=0">Full Category</a></i></p>
                    </div> 
                    <div class="blog-title">
                        <h2>${blog.title}</h2>
                        <p><i>Posted on ${blog.date} * <a href="home?id=${blog.id}">Full Article</a></i></p>
                    </div>                   
                    
                    <img src="${blog.image}">
                    <p>${blog.content}</p>
                </div>
                <div class="right-bar">
                    <%@include file="rightbar.jsp" %>
                </div>
            </div>
            <div class="footer">
                <%@include file="footer.jsp" %>
            </div>
        </div>
    </body>
</html>
