<%--
  Created by IntelliJ IDEA.
  User: Dyna
  Date: 2023/7/31
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>a.ajxTitle</title>
    <script type="text/javascript" src="/exam/js/jquery.js">
    </script>
    <script type="text/javascript">
        function fun1() {
            var param = {
                "url": "/exam/question/check.do",
                "method": "get",
                "data": "title=" + $(":text").val(),
                "dataTye": "text",
                "success": function (result) {
                    if (result > 0) {
                        $(":text:first").focus();
                        $("font:first").html("请先等待。。。。");
                    } else {
                        $("font:first").html("*");
                    }
                }
            };
            $.ajax(param);
        }
    </script>
</head>
<body>
<center>
    <form action="/exam/question/insert.do">
        <table border="2">
            <tr>
                <td>题目</td>
                <td><input type="text" name="title" onblur="window.fun1()">
                    <font style="color:red">*</font>
                </td>
            </tr>
            <tr>
                <td>A</td>
                <td><input type="text" name="optionA"></td>
            </tr>
            <tr>
                <td>B</td>
                <td><input type="text" name="optionB"></td>
            </tr>
            <tr>
                <td>C</td>
                <td><input type="text" name="optionC"></td>
            </tr>
            <tr>
                <td>D</td>
                <td><input type="text" name="optionD"></td>
            </tr>
            <tr>
                <td>正确答案</td>
                <td>
                    <input type="radio" name="answer" value="A">A
                    <input type="radio" name="answer" value="B">B
                    <input type="radio" name="answer" value="C">C
                    <input type="radio" name="answer" value="D">D
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="添加试题"></td>
                <td><input type="reset" /></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>

