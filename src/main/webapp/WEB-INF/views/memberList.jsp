<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 2:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <title>bookList</title>
</head>
<body>

<div class="container">
    <table class="table table-striped table-hover">
        <tr>
            <th>이름</th>
            <th>삭제</th>
            <th>조회</th>
        </tr>
        <c:forEach items="${memberList}" var="memberList">
        <tr>
            <td><a href="/member?findId=${memberList.memberId}">
                    ${memberList.memberName}
            </a>
            </td>
            <td>
                <button class="btn btn-danger" onclick="deleteMember('${memberList.memberId}')">삭제</button>
            </td>
            <td>
                <button class="btn btn-primary" onclick="find_Member(${memberList.memberId})">조회</button>
            </td>
            <br>
            </c:forEach>
        </table>
    <div id="detail-area">

    </div>
    </table>
</div>
<script>
    const deleteMember = (clickId) => {
        console.log("클릭아이디값" + clickId);
        location.href = "/delete?result=" + clickId;
    }
    const find_Member = (find_Id) => {
        console.log("findId", find_Id);
        const detailArea = document.getElementById("detail-area")
        $.ajax({
            type: "post",
            url: "/detail-ajax",
            datatype: "json",
            data: {
                    memberId: find_Id
            },
            //result 는 그냥 변수 이름
            success: function (result) {
                if(result !=null){
                    console.log(result);
                    let table =
                        "        <table class=\"table table-striped\">\n" +
                        "            <tr>\n" +
                        "                <th>id</th>\n" +
                        "                <td>"+ result.memberId +"</td>\n" +
                        "            </tr>\n" +
                        "            <tr>\n" +
                        "                <th>email</th>\n" +
                        "                <td>" + result.memberEmail + "</td>\n" +
                        "            </tr>\n" +
                        "            <tr>\n" +
                        "                <th>password</th>\n" +
                        "                <td>" + result.memberPassword + "</td>\n" +
                        "            </tr>\n" +
                        "            <tr>\n" +
                        "                <th>name</th>\n" +
                        "                <td> " + result.memberName + "</td>\n" +
                        "            </tr>\n" +
                        "            <tr>\n" +
                        "                <th>age</th>\n" +
                        "                <td>" + result.memberAge + "</td>\n" +
                        "            </tr>\n" +
                        "        </table>";
                    detailArea.innerHTML = table;


                }
                else{
                    console.log("실패");
                }

            },
            error: function (){
                console.log("ajax error");

            }

        });
    }


</script>


</body>
</html>
