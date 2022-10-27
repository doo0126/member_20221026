<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 2:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberDetail</title>
</head>
<body>
${result.memberName}의 정보는 ${result}

    <a href="/delete?result=${result.memberId}">이 정보 회원 삭제</a>
</form>

</body>
</html>
