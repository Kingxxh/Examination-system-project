<%--
  Created by IntelliJ IDEA.
  User: Dyna
  Date: 2023/7/31
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
    </style>
    <script type="text/javascript" src="/exam/js/jquery.js"></script>
    <script type="text/javascript">
        $(function (){
            var correct_Answer='${requestScope.key.answer}';
            var $obj = $(":radio");
            $.each($obj,function(index,dom){
                if($(dom).val() == correct_Answer){
                    $(dom).prop("checked",true);
                }
            })
        })
    </script>
</head>
<body>
<center>
    <form action="/exam/question/update.do">
        <table border="2">
            <tr>
                <td>题号</td>
                <td><input type="text" name="id" value="${requestScope.key.id}"></td>
            </tr>
            <tr>
                <td>题目</td>
                <td><input type="text" name="title" value="${key.title}"></td>
            </tr>
            <tr>
                <td>A</td>
                <td><input type="text" name="optionA" value="${key.optionA}"></td>
            </tr>
            <tr>
                <td>B</td>
                <td><input type="text" name="optionB" value="${key.optionB}"></td>
            </tr>
            <tr>
                <td>C</td>
                <td><input type="text" name="optionC" value="${key.optionC}"></td>
            </tr>
            <tr>
                <td>D</td>
                <td><input type="text" name="optionD" value="${key.optionD}"></td>
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
