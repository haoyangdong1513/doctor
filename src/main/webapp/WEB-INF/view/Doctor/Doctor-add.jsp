<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/8/31
  Time: 18:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <form action="<%=request.getContextPath()%>/doctor/addDoctor" method="post">
            <input type="hidden" name="sectionId" value="${sectionId}"/>
            姓名：<input type="text" name="name"/><br/>
            年龄：<input type="text" name="age"/><br/>
            性别：<input type="radio" name="sex" value="1"/>男
                   <input type="radio" name="sex" value="2"/>女
            <br/>
            时间：<input type="text" name="time"/><br/>
            img：<input type="text" name="imgurl"/><br/>
            <input type="submit" value="添加"/>
        </form>
</body>
</html>
