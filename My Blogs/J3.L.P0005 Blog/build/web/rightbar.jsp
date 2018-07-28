<%-- 
    Document   : rightbar
    Created on : Jun 3, 2018, 4:12:47 PM
    Author     : dell
--%>

<div class="cate-title">
    <h2>Categories</h2>
</div>
<div class="cate-list">
    <ul class="cate-items">
        <c:forEach var="category" items="${categories}">
            <li><a href="list?cateID=${category.id}">${category.category}</a></li>
        </c:forEach>

    </ul>
</div>
