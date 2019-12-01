<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/8/31
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
</head>
<body>
    <a href="<%=request.getContextPath()%>/doctor/toDoctorAdd">添加</a>
    <a href="<%=request.getContextPath()%>/section/toSectionAjax">返回</a>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>医生名称</th>
            <th>年龄</th>
            <th>性别</th>
            <th>状态</th>
            <th>时间</th>
            <th>图</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${page.list}" var="doctor">
                <tr>
                    <th>${doctor.name}</th>
                    <th>${doctor.age}</th>
                    <th>${doctor.sex}</th>
                    <th>${doctor.status}</th>
                    <th>
                        <fmt:formatDate value="${doctor.time}" pattern="yyyy-MM-dd HH:mm:ss"/>
                    </th>
                    <th>${doctor.imgurl}</th>
                    <th>
                        <a href="<%=request.getContextPath()%>/doctor/deleteDoctor?id=${doctor.id}">删除</a>
                        <a href="<%=request.getContextPath()%>/doctor/toupdateDoctor?id=${doctor.id}">修改</a>
                    </th>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <jsp:include page="../../commen/page.jsp"/>
</body>
</html>
