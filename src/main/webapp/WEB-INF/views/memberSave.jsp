<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오전 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<html>
<head>
    <title>회원가입</title>
    <style>
#save-form{
    width: 1000px;
    }
    </style>
</head>
<body>
<h3>회원가입</h3>
<div class="container" id="save-form">
<form action="/save" method="post">
   <input type="text" name="memberEmail"placeholder="이메일" class="form-control">
  <input type="text" name="memberPassword"placeholder="비밀번호" class="form-control">
   <input type="text" name="memberName"placeholder="이름" class="form-control">
  <input type="text" name="memberAge"placeholder="나이" class="form-control">
    <input type="text" name="memberMobile">
    <input type="button" value="회원가입" , onclick="save()" class="btn btn-primary">
    <!-- form 테그 안에서는 그냥button은 전송submit 역활 이기때문에 js로 호출 할려면 input button 사용한다 !-->
</form>
</div>
</body>
<script>
    const save = () => {
 console.log("save함수 호출");
    }
</script>
</html>
