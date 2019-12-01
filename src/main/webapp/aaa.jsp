<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/8/31
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
</head>
<script>
    $(function(){
        location.href="<%=request.getContextPath()%>/doctor/toDoctorAjax?sectionId=${sectionId}";
    });

</script>
<body>

</body>
</html>
