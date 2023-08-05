<%--
  Created by IntelliJ IDEA.
  User: Dyna
  Date: 2023/7/31
  Time: 13:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/js/one.js"></script>
    <title>Title</title>
    <style type="text/css">
        td{
            font-size:20px;
        }

        table{
            border: 2px solid blue;
        }
    </style>
</head>
<body>
<table border="2" align="center">
    <tr>
        <td><input type="checkbox" />全选与全不选</td>
        <td>题号</td>
        <td>题目</td>
        <td>A</td>
        <td>B</td>
        <td>C</td>
        <td>D</td>
        <td>正确答案</td>
        <td colspan="2">操作</td>
    </tr>
    <c:forEach items="${requestScope.key}" var="question">
        <tr>
            <td><input type="checkbox"/></td>
            <td>${question.id}</td>
            <td>${question.title}</td>
            <td>${question.optionA}</td>
            <td>${question.optionB}</td>
            <td>${question.optionC}</td>
            <td>${question.optionD}</td>
            <td>${question.answer}</td>
            <td><a href="/exam/question/info.do?id=${question.id}">试题详情</a></td>
            <td><a href="/exam/question/delete.do?id=${question.id}">试题删除</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
