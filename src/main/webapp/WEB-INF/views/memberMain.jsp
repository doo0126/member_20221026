<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<html>
<head>
    <title>Main</title>

</head>
<body>
<div class="container">
    <h2>${sessionScope.loginEmail}님 </h2>

   <a href="/update?updateId=${resultDTO.memberId}">회원 정보 수정</a>
<a href="/">index</a>
</div>
</body>
</html>
