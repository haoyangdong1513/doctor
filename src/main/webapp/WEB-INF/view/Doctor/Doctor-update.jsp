<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/8/31
  Time: 18:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <form action="<%=request.getContextPath()%>/doctor/updateDoctor" method="post">
            <input type="hidden" name="id" value="${doctor.id}"/>

            姓名：<input type="text" name="name" value="${doctor.name}" /><br/>
            年龄：<input type="text" name="age" value="${doctor.age}" /><br/>
            性别：<input type="radio" name="sex" ${doctor.sex==1?"checked":""} value="1"/>男
                   <input type="radio" name="sex" ${doctor.sex==2?"checked":""} value="2"/>女
            <br/>
            时间：<input type="text" name="time" value="<fmt:formatDate value='${doctor.time}' pattern="yyyy-MM-dd HH:mm:ss"/>" /><br/>
            img：<input type="text" name="imgurl" value="${doctor.imgurl}"/><br/>
            <input type="submit" value="修改"/>
        </form>
</body>
</html>
