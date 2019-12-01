<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/8/31
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
</head>
<body>
    <a href="<%=request.getContextPath()%>/section/toSectionAdd">添加</a>
    <table  class="table table-hover" width="100%" border="1px" bgcolor="#ffc0cb" cellspacing="0" cellpadding="0">
        <thead>
        <tr>
            <th>id</th>
            <th>科室</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${page.list}" var="section">
            <tr>
                <th>${section.id}</th>
                <th>
                    <a href="<%=request.getContextPath()%>/doctor/toDoctorAjax?sectionId=${section.id}">${section.name}</a>
                </th>
                <th>
                   <a href="<%=request.getContextPath()%>/section/deleteSection?id=${section.id}">删除</a>
                   <a href="<%=request.getContextPath()%>/section/toupdateSection?id=${section.id}">修改</a>
                </th>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <jsp:include page="../../commen/page.jsp"/>

</body>
</html>
