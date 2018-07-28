<%-- 
    Document   : list
    Created on : Jun 3, 2018, 4:09:03 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Page</title>
        <link href="styles/index.css" rel="stylesheet" type="text/css"/>
    </head>
    <%
        int cateID = (Integer) request.getAttribute("cateID");
        int totalPage = Integer.parseInt(request.getAttribute("totalpage").toString());
        int pagegap = Integer.parseInt(request.getAttribute("pagegap").toString());
        int pageIndex = Integer.parseInt(request.getAttribute("pageindex").toString());
        %>
    <body>
        <div class="container">
            <div class="header">
                <%@include file="header.jsp" %>
            </div>
            <div class="menu">
                <%@include file="menu.jsp" %>
            </div>
            <div class="menu-arrow">
                <img id="arrow-home" src="images/img02.jpg"/>
            </div>
            <div class="content">
                <div class="blog">
                    <h2>Blogs list in this category</h2>
                    <ul class="same-list">
                        <c:forEach var="post" items="${results}">
                            <li><a href="home?id=${post.id}"><strong>${post.title}</strong></a> Posted on ${post.date}</li>
                        </c:forEach>
                    </ul>
                   <%=util.HtmlHelper.pagger(pageIndex, pagegap, totalPage, cateID) %>
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
