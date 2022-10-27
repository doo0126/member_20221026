<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오전 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<html>
<head>
    <title>index</title>

</head>
<body>
<a href="/saveIndex">회원 가입</a>
<a href="/loginIndex">로그인</a>
<a href="/memberList">회원 목록 출력</a>
<button class="btn btn-primary" onclick="saveFn()">회원가입</button>
<button class="btn btn-danger" onclick="loginFn()">로그인</button>
<button class="btn btn-dark" onclick="listFn()">목록</button>


</body>
<script>
    const saveFn = () =>{
    location.href ="/saveIndex"; //get 방식의 요청 자스문법

    }
    const loginFn = () => {
        location.href ="/loginIndex";
      
    }
    const listFn = () => {
        location.href ="/memberList";
    }
</script>
</html>
