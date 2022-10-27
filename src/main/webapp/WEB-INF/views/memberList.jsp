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
    <title>bookList</title>
</head>
<body>
<table>
<tr>

    <th>이름</th>

</tr>
    <c:forEach items="${memberList}" var="memberList">
     <tr>

        <td><a href="/member?findId=${memberList.memberId}">
                ${memberList.memberName}
                ${memberList.memberId}
        </a>   </td>

         <br>
    </c:forEach>
</table>

</body>
</html>
