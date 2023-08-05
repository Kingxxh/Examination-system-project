<%--
  Created by IntelliJ IDEA.
  User: Dyna
  Date: 2023/7/31
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Title</title>
  <style type="text/css">
    td{
      font-size:20px;
    }

    table{
      border: 2px solid blue;
    }
  </style></head>
<body>
<center>
  <form action="/exam/question/score.do">
    <table border="2" align="center">
      <tr>
        <td>题号</td>
        <td>题目</td>
        <td>A</td>
        <td>B</td>
        <td>C</td>
        <td>D</td>
        <td>正确答案</td>
      </tr>
      <c:forEach items="${sessionScope.list}" var="question">
        <tr>
          <td>${question.id}</td>
          <td>${question.title}</td>
          <td>${question.optionA}</td>
          <td>${question.optionB}</td>
          <td>${question.optionC}</td>
          <td>${question.optionD}</td>
          <td>
            <input type="radio" name="${question.id}" value="A"/>A
            <input type="radio" name="${question.id}" value="B"/>B
            <input type="radio" name="${question.id}" value="C"/>C
            <input type="radio" name="${question.id}" value="D"/>D
          </td>
        </tr>
      </c:forEach>
      <tr align="center">
        <td colspan="7"><input type="submit" value="交卷"></td>
      </tr>
    </table>
  </form>
</center>
</body>
</html>
