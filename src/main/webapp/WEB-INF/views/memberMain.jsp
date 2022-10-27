<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
</head>
<body>
<h4>환영합니다 ${resultDTO.memberName}님</h4>

   <a href="/update?updateId=${resultDTO.memberId}">회원 정보 수정</a>


</body>
</html>
