<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/8/31
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <form action="<%=request.getContextPath()%>/section/addSection" method="post">
            科室：<input type="text" name="name"/><br/>
            <input type="submit" value="添加"/>
        </form>

</body>
</html>
