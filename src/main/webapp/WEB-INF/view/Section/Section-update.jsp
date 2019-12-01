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
        <form action="<%=request.getContextPath()%>/section/updateSection" method="post">
                <input type="hidden" name="id" value="${section.id}"/>
            科室：<input type="text" name="name" value="${section.name}"/><br/>
            <input type="submit" value="修改"/>
        </form>

</body>
</html>
