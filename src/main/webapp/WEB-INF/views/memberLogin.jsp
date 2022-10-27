<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오전 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 화면</title>
</head>
<body>
<form action="/login" method="post">
  이메일<input type="text" name="memberEmail"><br>
  비밀번호<input  type="text" name="memberPassword"><br>
  <input  type="submit" value="확인">
</form>

</body>
</html>
