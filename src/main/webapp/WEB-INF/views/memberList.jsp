<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 2:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <title>bookList</title>
</head>
<body>

<div class="container">
<table class="table table-striped table-hover">
<tr>
    <th>이름</th>
</tr>
    <c:forEach items="${memberList}" var="memberList">
     <tr>
        <td><a href="/member?findId=${memberList.memberId}">
                ${memberList.memberName}

            </a>
        </td>
         <br>
    </c:forEach>
</table>
</div>
</body>
</html>
