<%-- 
    Document   : footer.jsp
    Created on : Jun 3, 2018, 3:57:32 PM
    Author     : dell
--%>

<ul class="same-list">
    <c:forEach var="post" items="${same}">
        <li><a href="home?id=${post.id}"><strong>${post.title}</strong></a> Posted on ${post.date}</li>
    </c:forEach>
</ul>
