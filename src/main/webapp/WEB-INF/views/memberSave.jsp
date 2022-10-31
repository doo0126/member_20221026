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
    <script src="/resources/js/jquery.js"></script>
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
<form action="/save" method="post" name="saveForm">
   <input type="text" name="memberEmail"placeholder="이메일" id ="memberEmail" class="form-control" onblur="emailDuplicateCheck() ">
    <span id="email-dup-check"></span>
    <span id="email-input"></span>
  <input type="text" name="memberPassword"placeholder="비밀번호" class="form-control">
   <input type="text" name="memberName"placeholder="이름" class="form-control">
  <input type="text" name="memberAge"placeholder="나이" class="form-control">
    <input type="text" name="memberMobile"placeholder="전화번호"class="form-control">
    <input type="button" value="회원가입" , onclick="save()" class="btn btn-primary">
    <!-- form 테그 안에서는 그냥button은 전송submit 역활 이기때문에 js로 호출 할려면 input button 사용한다 !-->
</form>
</div>
</body>
<script>
    const save = () => {
 console.log("save함수 호출");
 if(document.saveForm.memberEmail.value ==""){
     //alert("이메일을 입력해 주세요");
       const emailcheck =document.getElementById("email-input");
     emailcheck.innerHTML ="이메일입력"
     emailcheck.style.color="red";
        return false;
 }
 else if(document.saveForm.memberPassword.value == ""){
     alert("비밀번호는 필수 입력")
     return  false;
 }
 else if(document.saveForm.memberAge.value == ""){
     alert("나이 필수 입력")
     return  false;
 }
 else if(document.saveForm.memberMobile.value == ""){
     alert("번호 필수 입력")
     return  false;
 }

 document.saveForm.submit();
console.log("세이브완료")
    }
    emailDuplicateCheck = () =>{
        const email =document.getElementById("memberEmail").value; // 아이디를 지정 해주고 가져옴

        const checkResult = document.getElementById("email-dup-check");
        console.log(email);
        $.ajax({
            type:"post",
            url:"/duplicate-check",
            dataType:"text",
            data:{inputEmail:email}, //memberEmail 의 값을  email에 담았다 그 변수 좌변은 java에서 쓰임
            success:function (result){  // checkResult 반환 받고 ajax 성공이면 result로 받는다 타입은 text
            console.log("checkResult:",result);
            if(result == "ok"){ //result text 형식이 ok면 아래 실행
                checkResult.innerHTML ="사용 가능";
                checkResult.style.color ="green";
            }
            else{
                checkResult.innerHTML = "사용 불가";
                checkResult.style.color = "red";
            }
            },
            error:function(){
                console.log("실패");
            }
        });

    }
</script>
</html>
